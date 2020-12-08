#!/bin/bash
./docker-stop.sh "$1"

(
	cd $1
	sudo docker-compose pull --quiet --ignore-pull-failures
	sudo docker-compose build --pull
)

./docker-start.sh "$1"
