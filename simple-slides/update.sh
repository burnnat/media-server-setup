# Note: update version number in docker/package.json before running.
sudo docker build -t burnnat/simple-slides docker
sudo systemctl restart simple-slides.service
