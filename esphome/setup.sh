sudo apt install systemd-docker
sudo cp /storage/workspaces/media-server-setup/esphome/esphome.service /etc/systemd/system/esphome.service
sudo systemctl enable esphome.service
sudo systemctl start esphome.service
