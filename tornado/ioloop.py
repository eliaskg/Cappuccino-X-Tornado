#!/usr/bin/env python
#
# Copyright 2009 Facebook
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

"""A level-triggered I/O loop for non-blocking sockets."""

import bisect
import errno
import fcntl
import logging
import os
import select
import time


class IOLoop(object):
    """A level-triggered I/O loop.

    We use epoll if it is available, or else we fall back on select(). If
    you are implementing a system that needs to handle 1000s of simultaneous
    connections, you should use Linux and either compile our epoll module or
    use Python 2.6+ to get epoll support.

    Example usage for a simple TCP server:

        import errno
        import functools
        import ioloop
        import socket

        def connection_ready(sock, fd, events):
            while True:
                try:
                    connection, address = sock.accept()
                except socket.error, e:
                    if e[0] not in (errno.EWOULDBLOCK, errno.EAGAIN):
                        raise
                    return
                connection.setblocking(0)
                handle_connection(connection, address)

        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
        sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        sock.setblocking(0)
        sock.bind(("", port))
        sock.listen(128)

        io_loop = ioloop.IOLoop.instance()
        callback = functools.partial(connection_ready, sock)
        io_loop.add_handler(sock.fileno(), callback, io_loop.READ)
        io_loop.start()

    """
    # Constants from the epoll module
    _EPOLLIN = 0x001
    _EPOLLPRI = 0x002
    _EPOLLOUT = 0x004
    _EPOLLERR = 0x008
    _EPOLLHUP = 0x010
    _EPOLLRDHUP = 0x2000
    _EPOLLONESHOT = (1 << 30)
    _EPOLLET = (1 << 31)

    # Our events map exactly to the epoll events
    NONE = 0
    READ = _EPOLLIN
    WRITE = _EPOLLOUT
    ERROR = _EPOLLERR | _EPOLLHUP | _EPOLLRDHUP

    def __init__(self, impl=None):
        self._impl = impl or _poll()
        self._handlers = {}
        self._events = {}
        self._callbacks = set()
        self._timeouts = []
        self._running = False

        # Create a pipe that we send bogus data to when we want to wake
        # the I/O loop when it is idle
        r, w = os.pipe()
        self._set_nonblocking(r)
        self._set_nonblocking(w)
        self._waker_reader = os.fdopen(r, "r", 0)
        self._waker_writer = os.fdopen(w, "w", 0)
        self.add_handler(r, self._read_waker, self.WRITE)

    @classmethod
    def instance(cls):
        """Returns a global IOLoop instance.

        Most single-threaded applications have a single, global IOLoop.
        Use this method instead of passing around IOLoop instances 
        throughout your code.

        A common pattern for classes that depend on IOLoops is to use
        a default argument to enable programs with multiple IOLoops
        but not require the argument for simpler applications:

            class MyClass(object):
                def __init__(self, io_loop=None):
                    self.io_loop = io_loop or IOLoop.instance()
        """
        if not hasattr(cls, "_instance"):
            cls._instance = cls()
        return cls._instance

    def add_handler(self, fd, handler, events):
        """Registers the given handler to receive the given events for fd."""
        self._handlers[fd] = handler
        self._impl.register(fd, events | self.ERROR)

    def update_handler(self, fd, events):
        """Changes the events we listen for fd."""
        self._impl.modify(fd, events | self.ERROR)

    def remove_handler(self, fd):
        """Stop listening for events on fd."""
        self._handlers.pop(fd, None)
        self._events.pop(fd, None)
        try:
            self._impl.unregister(fd)
        except OSError:
            logging.debug("Error deleting fd from IOLoop", exc_info=True)

    def start(self):
        """Starts the I/O loop.

        The loop will run until one of the I/O handlers calls stop(), which
        will make the loop stop after the current event iteration completes.
        """
        self._running = True
        while True:
            # Never use an infinite timeout here - it can stall epoll
            poll_timeout = 0.2

            # Prevent IO event starvation by delaying new callbacks
            # to the next iteration of the event loop.
            callbacks = list(self._callbacks)
            for callback in callbacks:
                # A callback can add or remove other callbacks
                if callback in self._callbacks:
                    self._callbacks.remove(callback)
                    self._run_callback(callback)

            if self._callbacks:
                poll_timeout = 0.0

            if self._timeouts:
                now = time.time()
                while self._timeouts and self._timeouts[0].deadline <= now:
                    timeout = self._timeouts.pop(0)
                    self._run_callback(timeout.callback)
                if self._timeouts:
                    milliseconds = self._timeouts[0].deadline - now
                    poll_timeout = min(milliseconds, poll_timeout)

            if not self._running:
                break

            try:
                event_pairs = self._impl.poll(poll_timeout)
            except Exception, e:
                if e.args == (4, "Interrupted system call"):
                    logging.warning("Interrupted system call", exc_info=1)
                    continue
                else:
                    raise

            # Pop one fd at a time from the set of pending fds and run
            # its handler. Since that handler may perform actions on
            # other file descriptors, there may be reentrant calls to
            # this IOLoop that update self._events
            self._events.update(event_pairs)
            while self._events:
                fd, events = self._events.popitem()
                try:
                    self._handlers[fd](fd, events)
                except KeyboardInterrupt:
                    raise
                except OSError, e:
                    if e[0] == errno.EPIPE:
                        # Happens when the client closes the connection
                        pass
                    else:
                        logging.error("Exception in I/O handler for fd %d",
                                      fd, exc_info=True)
                except:
                    logging.error("Exception in I/O handler for fd %d",
                                  fd, exc_info=True)

    def stop(self):
        """Stop the loop after the current event loop iteration is complete."""
        self._running = False
        self._wake()

    def running(self):
        """Returns true if this IOLoop is currently running."""
        return self._running

    def add_timeout(self, deadline, callback):
        """Calls the given callback at the time deadline from the I/O loop."""
        timeout = _Timeout(deadline, callback)
        bisect.insort(self._timeouts, timeout)
        return timeout

    def remove_timeout(self, timeout):
        self._timeouts.remove(timeout)

    def add_callback(self, callback):
        """Calls the given callback on the next I/O loop iteration."""
        self._callbacks.add(callback)
        self._wake()

    def remove_callback(self, callback):
        """Removes the given callback from the next I/O loop iteration."""
        self._callbacks.pop(callback)

    def _wake(self):
        try:
            self._waker_writer.write("x")
        except IOError:
            pass

    def _run_callback(self, callback):
        try:
            callback()
        except (KeyboardInterrupt, SystemExit):
            raise
        except:
            logging.error("Exception in callback %r", callback, exc_info=True)

    def _read_waker(self, fd, events):
        try:
            while True:
                self._waker_reader.read()
        except IOError:
            pass

    def _set_nonblocking(self, fd):
        flags = fcntl.fcntl(fd, fcntl.F_GETFL)
        fcntl.fcntl(fd, fcntl.F_SETFL, flags | os.O_NONBLOCK)


class _Timeout(object):
    """An IOLoop timeout, a UNIX timestamp and a callback"""
    def __init__(self, deadline, callback):
        self.deadline = deadline
        self.callback = callback

    def __cmp__(self, other):
        return cmp((self.deadline, id(self.callback)),
                   (other.deadline, id(other.callback)))


class PeriodicCallback(object):
    """Schedules the given callback to be called periodically.

    The callback is called every callback_time milliseconds.
    """
    def __init__(self, callback, callback_time, io_loop=None):
        self.callback = callback
        self.callback_time = callback_time
        self.io_loop = io_loop or ioloop.IOLoop.instance()
        self._running = True

    def start(self):
        timeout = time.time() + self.callback_time / 1000.0
        self.io_loop.add_timeout(timeout, self._run)

    def stop(self):
        self._running = False

    def _run(self):
        if not self._running: return
        try:
            self.callback()
        except:
            logging.error("Error in periodic callback", exc_info=True)
        self.start()


class _EPoll(object):
    """An epoll-based event loop using our C module for Python 2.5 systems"""
    _EPOLL_CTL_ADD = 1
    _EPOLL_CTL_DEL = 2
    _EPOLL_CTL_MOD = 3

    def __init__(self):
        self._epoll_fd = epoll.epoll_create()

    def register(self, fd, events):
        epoll.epoll_ctl(self._epoll_fd, self._EPOLL_CTL_ADD, fd, events)

    def modify(self, fd, events):
        epoll.epoll_ctl(self._epoll_fd, self._EPOLL_CTL_MOD, fd, events)

    def unregister(self, fd):
        epoll.epoll_ctl(self._epoll_fd, self._EPOLL_CTL_DEL, fd, 0)

    def poll(self, timeout):
        return epoll.epoll_wait(self._epoll_fd, int(timeout * 1000))


class _Select(object):
    """A simple, select()-based IOLoop implementation for non-Linux systems"""
    def __init__(self):
        self.read_fds = set()
        self.write_fds = set()
        self.error_fds = set()
        self.fd_sets = (self.read_fds, self.write_fds, self.error_fds)

    def register(self, fd, events):
        if events & IOLoop.READ: self.read_fds.add(fd)
        if events & IOLoop.WRITE: self.write_fds.add(fd)
        if events & IOLoop.ERROR: self.error_fds.add(fd)

    def modify(self, fd, events):
        self.unregister(fd)
        self.register(fd, events)

    def unregister(self, fd):
        self.read_fds.discard(fd)
        self.write_fds.discard(fd)
        self.error_fds.discard(fd)

    def poll(self, timeout):
        readable, writeable, errors = select.select(
            self.read_fds, self.write_fds, self.error_fds, timeout)
        events = {}
        for fd in readable:
            events[fd] = events.get(fd, 0) | IOLoop.READ
        for fd in writeable:
            events[fd] = events.get(fd, 0) | IOLoop.WRITE
        for fd in errors:
            events[fd] = events.get(fd, 0) | IOLoop.ERROR
        return events.items()


# Choose a poll implementation. Use epoll if it is available, fall back to
# select() for non-Linux platforms
if hasattr(select, "epoll"):
    # Python 2.6+ on Linux
    _poll = select.epoll
else:
    try:
        # Linux systems with our C module installed
        import epoll
        _poll = _EPoll
    except:
        # All other systems
        import sys
        if "linux" in sys.platform:
            logging.warning("epoll module not found; using select()")
        _poll = _Select
