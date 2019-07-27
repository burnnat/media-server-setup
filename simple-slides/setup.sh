sudo docker build -t burnnat/simple-slides docker
sudo cp /storage/workspaces/media-server-setup/simple-slides/simple-slides.service /etc/systemd/system/simple-slides.service
sudo systemctl enable simple-slides.service
sudo systemctl start simple-slides.service
