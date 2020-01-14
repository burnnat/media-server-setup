#!/bin/sh
# Build docker image and start container
sudo docker build -t burnnat/code-server docker

# Increase filesystem watch limit for large repos
echo 'fs.inotify.max_user_watches=524288' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# Setup SystemD unit
sudo apt install systemd-docker
sudo cp /storage/workspaces/media-server-setup/code-server/code-server.service /etc/systemd/system/
sudo mkdir /etc/systemd/system/code-server.service.d/
sudo systemctl enable code-server.service

# Setup Apache proxy
sudo ln -s /storage/workspaces/media-server-setup/code-server/code-server-setup.conf /etc/apache2/sites-available/code-server.conf
sudo a2ensite code-server
sudo systemctl restart apache2.service

# Install SSL certificate
sudo certbot certonly --standalone --preferred-challenges http-01 --http-01-port 8023 --email webmaster@burnskids.com -d code.na.burnskids.com

# Restart Apache with HTTPS enabled
sudo rm /etc/apache2/sites-available/code-server.conf
sudo ln -s /storage/workspaces/media-server-setup/code-server/code-server.conf /etc/apache2/sites-available/code-server.conf
sudo systemctl restart apache2.service
