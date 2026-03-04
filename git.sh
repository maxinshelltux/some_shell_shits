#!/bin/sh

case $1 in
	"add"):
	git add .
	;;
	"commit"):
	git commit -m "$0"
	;;
	"push"):
	git push origin main
	;;
	"full"):
	git add .
	git commit -m "$0"
	git push origin main
	;;
	*):
	echo "error input (0)"
	;;
esac
