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

import logging
import os.path
import re
import tornado.httpserver
import tornado.ioloop
import tornado.options
import tornado.web
import unicodedata
import uuid

from tornado.options import define, options

define("port", default=8888, help="run on the given port", type=int)

# This defines the applications routes
class Application(tornado.web.Application):
    def __init__(self):
        handlers = [
			(r"/", IndexHandler),
			(r"/message", MessageHandler),
			(r"/color", ColorHandler),
			(r"/updates", UpdatesHandler),
        ]
        settings = dict(
            static_path=os.path.join(os.path.dirname(__file__), "static"),
        )
        tornado.web.Application.__init__(self, handlers, **settings)

# This handles the Updates
class UpdateMixin(object):
    waiters = []
    cache = []
    cache_size = 200

    def wait_for_updates(self, callback, cursor=None):
        cls = UpdateMixin
        if cursor:
            index = 0
            for i in xrange(len(cls.cache)):
                index = len(cls.cache) - i - 1
                if cls.cache[index]["id"] == cursor: break
            recent = cls.cache[index + 1:]
            if recent:
                callback(recent)
                return
        cls.waiters.append(callback)

    def new_updates(self, updates):
        cls = UpdateMixin
        logging.info("Sending new update to %r listeners", len(cls.waiters))
        for callback in cls.waiters:
            try:
                callback(updates)
            except:
                logging.error("Error in waiter callback", exc_info=True)
        cls.waiters = []
        cls.cache.extend(updates)
        if len(cls.cache) > self.cache_size:
            cls.cache = cls.cache[-self.cache_size:]

# Redirects to the Cappuccino app
class IndexHandler(tornado.web.RequestHandler):
	def get(self):
		self.redirect("/static/index.html")

# Creates a new message and sends it to the updates handler
class MessageHandler(tornado.web.RequestHandler, UpdateMixin):
	def post(self):
		message = {
			"type": self.get_argument("type"),
			# Because we are not using a database we create an unique ID with uuid
			"id": str(uuid.uuid4()),
			"sender": self.get_argument("sender"),
			"body": self.get_argument("body"),
		}
		self.new_updates([message])
		
# Creates a new color and sends it to the updates handler
class ColorHandler(tornado.web.RequestHandler, UpdateMixin):
	def post(self):
		color = {
			"type": self.get_argument("type"),
			# Because we are not using a database we create an unique ID with uuid
			"id": str(uuid.uuid4()),
			"color": self.get_argument("color"),
		}
		self.new_updates([color])

# Handles the updates and sends them to all clients
class UpdatesHandler(tornado.web.RequestHandler, UpdateMixin):
    @tornado.web.asynchronous
    def post(self):
        cursor = self.get_argument("cursor", None)
        self.wait_for_updates(self.async_callback(self.on_new_updates),
                               cursor=cursor)

    def on_new_updates(self, updates):
        # Closed client connection
        if self.request.connection.stream.closed():
            return
        self.finish(dict(updates=updates))

def main():
    tornado.options.parse_command_line()
    http_server = tornado.httpserver.HTTPServer(Application())
    http_server.listen(options.port)
    tornado.ioloop.IOLoop.instance().start()

if __name__ == "__main__":
    main()
