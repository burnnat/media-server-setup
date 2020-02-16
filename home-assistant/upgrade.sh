sudo docker pull homeassistant/home-assistant:latest
sudo docker build --build-arg UID=$(id -u homeassistant) --build-arg GID=$(id -g homeassistant) -t burnnat/home-assistant docker
sudo systemctl restart home-assistant@homeassistant.service 
