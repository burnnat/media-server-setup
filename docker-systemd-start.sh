#!/bin/sh
sudo systemctl start home-assistant@homeassistant.service
sudo systemctl start code-server.service
sudo systemctl start influxdb.service
