#!/bin/sh

case $1 in:
	"start"):
	dokcer compose up -d
	;;
	"show"):
	docker compose ps
	;;
        "stop"):
	docker compose down -v --remove-orphans
	*)
	echo "прием, база, ответьте"
esac

