#!/bin/bash
set -euo pipefail

# Update and install required packages
sudo yum update -y
sudo yum install git -y
sudo yum install nginx -y

# Clear existing files in the web server's root directory
sudo rm -rf /usr/share/nginx/html/*

# Clone the repository into a temporary directory
TEMP_DIR="/tmp/mealshop"
sudo mkdir -p "$TEMP_DIR"

sudo git clone https://gitlab.com/merajaprasad/meal_shop_responsive_website.git "$TEMP_DIR"

# Copy the files to the web server's root directory
sudo cp -r "$TEMP_DIR"/* /usr/share/nginx/html

# Set proper permissions for the web server files
sudo chmod -R 755 /usr/share/nginx/html

# Restart Nginx to apply changes
sudo systemctl enable nginx
sudo systemctl restart nginx

echo "Website deployed successfully!"
