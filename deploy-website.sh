#!/bin/bash

# Update package list and install Apache and Git
sudo apt-get update
sudo apt-get install -y apache2 git

# Remove default Apache page
sudo rm -rf /var/www/html/*

# Clone your GitHub repository into Apache web directory
sudo git clone https://github.com/Learn14-know/ProjectT /var/www/html

# Set proper permissions so Apache can serve the files
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Apache to apply changes
sudo systemctl restart apache2
