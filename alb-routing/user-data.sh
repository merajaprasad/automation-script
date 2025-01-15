#!/bin/bash
set -euo pipefail

sudo apt update
sudo apt install nginx -y


# Define the default Nginx HTML file path
NGINX_HTML="/var/www/html/index.nginx-debian.html"

sudo sed -i 's/<h1>Welcome to nginx!<\/h1>/<h1>Welcome to Merajaprasad.in!</h1>/g' "$NGINX_HTML"

echo '<p> <a href="https://www.merajaprasad.in/movies" target="_blank">Go to Movies</a> </p>' | sudo tee -a "$NGINX_HTML"

echo  '<p> <a href="https://www.merajaprasad.in/shows" target="_blank">Go to Shows</a> </p>' | sudo tee -a "$NGINX_HTML"

# restart and enable nginx
sudo systemctl restart nginx
sudo systemctl enable nginx

# Print success message
echo "Nginx installed and configured successfully!"


##############################################################################################################################
#!/bin/bash
set -euo pipefail  # Ensures robust error handling

# Update package lists and install Nginx
sudo apt update
sudo apt install nginx -y

# Define the default Nginx HTML file path
NGINX_HTML="/var/www/html/index.nginx-debian.html"

# Modify the default HTML file to include custom content
sudo sed -i 's/<h1>Welcome to nginx!<\/h1>/<h1>Welcome to Merajaprasad.in!</h1>/g' "$NGINX_HTML"

sudo tee -a "$NGINX_HTML" <<EOF
<p><a href="https://www.merajaprasad.in/movies" target="_blank">Go to Movies</a></p>
<p><a href="https://www.merajaprasad.in/shows" target="_blank">Go to Shows</a></p>
EOF

# Restart and enable Nginx
sudo systemctl restart nginx
sudo systemctl enable nginx

# Print success message
echo "Nginx installed and configured successfully!"


