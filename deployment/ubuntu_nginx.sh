#!/bin/bash
set -euo pipefail

# Update and install required packages
sudo apt update -y
sudo apt install git -y
sudo apt install nginx -y

# Clear existing files in the web server's root directory
sudo rm -rf /var/www/html/*

# Clone the repository into a temporary directory
TEMP_DIR="/$USER/website"
git clone https://gitlab.com/merajaprasad/meal_shop_responsive_website.git "$TEMP_DIR"

# Copy the files to the web server's root directory
sudo cp -r "$TEMP_DIR"/* /var/www/html/

# Set proper permissions for the web server files
sudo chmod -R 755 /var/www/html/

# Restart Nginx to apply changes
sudo systemctl restart nginx

echo "Website deployed successfully!"
