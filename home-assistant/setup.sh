sudo cp /storage/workspaces/media-server-setup/home-assistant/home-assistant@homeassistant.service /etc/systemd/system/home-assistant@homeassistant.service
sudo systemctl enable home-assistant@homeassistant.service
sudo systemctl start home-assistant@homeassistant.service
