sudo docker pull homeassistant/home-assistant:latest
sudo docker build -t burnnat/home-assistant docker
sudo systemctl restart home-assistant@homeassistant.service 
