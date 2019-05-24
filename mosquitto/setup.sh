sudo apt install mosquitto
sudo mosquitto_passwd -c /etc/mosquitto/passwd home
sudo ln -s /storage/workspaces/media-server-setup/mosquitto/default.conf /etc/mosquitto/conf.d/default.conf
sudo systemctl restart mosquitto.service
