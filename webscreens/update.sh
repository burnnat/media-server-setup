# Note: update version number in docker/package.json before running.
sudo docker build -t burnnat/webscreens docker
sudo systemctl restart webscreens.service
