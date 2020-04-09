sudo apt install systemd-docker
sudo cp /storage/workspaces/media-server-setup/influxdb/influxdb.service /etc/systemd/system/influxdb.service
sudo systemctl enable influxdb.service
sudo systemctl start influxdb.service
