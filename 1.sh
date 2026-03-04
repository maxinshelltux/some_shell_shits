#!/bin/sh

d_c () {
	docker compose "$@"
}
case "$1" in
	"start"):
	d_c up -d
	;;
	"show"):
	d_c ps
	;;
	"stop"):
	d_c down -v --remove-orphans
	;;
	*)
	echo "err input(0)"
esac

