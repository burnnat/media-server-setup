sudo docker build -t burnnat/webscreens docker
sudo cp /storage/workspaces/media-server-setup/webscreens/webscreens.service /etc/systemd/system/webscreens.service
sudo systemctl enable webscreens.service
sudo systemctl start webscreens.service
