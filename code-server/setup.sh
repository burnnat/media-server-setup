#!/bin/sh
# Setup SystemD unit
#sudo ln -s /storage/workspaces/media-server-setup/code-server/code-server.service /etc/systemd/system/code-server.service
#sudo mkdir /etc/systemd/system/code-server.service.d/

# Setup Apache proxy
sudo ln -s /storage/workspaces/media-server-setup/code-server/code-server-http.conf /etc/apache2/sites-available/code-server.conf
sudo a2ensite code-server
sudo systemctl restart apache2.service
