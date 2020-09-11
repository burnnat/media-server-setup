#!/bin/sh
sudo systemctl start home-assistant@homeassistant.service
sudo systemctl start webscreens.service
sudo systemctl start esphome.service
sudo systemctl start code-server.service
sudo systemctl start influxdb.service
