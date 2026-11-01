#!/bin/bash

# install ufw
sudo apt update
sudo apt install ufw

# ufw configs:
sudo ufw limit in 22/tcp
# sudo ufw allow from <ip address> to any port 22
#sudo ufw allow in 80/tcp
sudo ufw allow in 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo systemctl enable ufw
sudo ufw enable

sudo systemctl status ufw

sudo ufw status verbose
sudo ufw status numbered

# Others:
# sudo ufw deny from <ip address>
