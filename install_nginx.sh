#!/bin/bash

sudo apt update -y
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
echo "Hello from Terraform on Ubuntu!" > /var/www/html/index.html