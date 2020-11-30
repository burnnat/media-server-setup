#!/bin/sh
./docker-stop.sh "$1"

sudo docker-compose pull --quiet --ignore-pull-failures
sudo docker-compose build --pull

./docker-start.sh "$1"
