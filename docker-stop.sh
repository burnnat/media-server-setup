#!/bin/bash
if [[ ! -f "$1/docker-compose.yml" ]] ; then
    echo "Service '$1' is not a valid docker-compose target."
    exit
fi

cd $1
sudo docker-compose down --remove-orphans
