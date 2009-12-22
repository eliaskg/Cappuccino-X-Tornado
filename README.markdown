Cappuccino X Tornado
==========

by Elias Klughammer

## Introduction

This is a demo application for bringing together the Cappuccino Framework (http://www.cappuccino.org) and the Tornado Web server. (http://www.tornadoweb.org)

In opposite to my Cappuccino X Juggernaut implementation there is no flash needed now. The tornado web server is a lightweight  well-scaling non-blocking webserver with the ability for pushing data through http-connections.
For the record: Tornado is the technology behind FriendFeed.

Here you can see a demonstration of the sample app:
http://www.youtube.com/watch?v=1MPTxS9uyT4


## Installation

__1. Download and install Tornado__

Download http://www.tornadoweb.org/static/tornado-0.2.tar.gz
	
	tar xvzf tornado-0.2.tar.gz
	cd tornado-0.2
	python setup.py build
	sudo python setup.py install
	
	
__2. Install additional packages__

Mac OS X:
	
	sudo easy_install setuptools pycurl==7.16.2.1 simplejson
	
Ubuntu Linux:
	
	sudo apt-get install python-dev python-pycurl python-simplejson
		
		
__3. Download and unpack the demo app__


__4. Start the tornado server in the demo app folder__

	python cappuccino_x_tornado.py
	
	
__5. Open your browser and go to http://localhost:8888__


