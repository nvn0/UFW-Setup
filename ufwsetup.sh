#!/bin/bash

# intall ufw
sudo apt update
sudo apt install ufw

# ufw configs:
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo systemctl enable ufw
sudo ufw enable

sudo systemctl status ufw

sudo ufw status verbose
sudo ufw status numbered
