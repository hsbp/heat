#!/usr/bin/env python

from serial import Serial
from SocketServer import BaseRequestHandler, TCPServer

toggler = Serial('/dev/ttyS0').setDTR
toggler(False)

class HeatHandler(BaseRequestHandler):
	def handle(self):
		data = self.request.recv(1024).strip()
		if 'ON' in data:
			toggler(True)
		elif 'OFF' in data:
			toggler(False)
		self.request.sendall('OK\n')

if __name__ == "__main__":
	server = TCPServer(('localhost', 4347), HeatHandler)
	server.serve_forever()
