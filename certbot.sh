#!/bin/bash

sudo apt update
sudo apt install snapd -y
sudo snap install core
sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --apache --agree-tos --redirect -m Kalaudine1@gmail.com -d claudineogu.me -d www.claudineogu.me

#Certificates provided by Let's Encrypt are valid for 90 days only, so you need to renew them often.

sudo certbot renew --dry-run