#!/bin/sh

mkdir ssl 

case $1 in
	"create"):
	sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./ssl/server.key -out ./ssl/server.crt
	;;
	*):
	echo "error input (0)"
	;;
esac
