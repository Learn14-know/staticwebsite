#!/bin/bash

# Exit on any error
set -e

# Update package index and install Apache + Git
apt-get update -y
apt-get install -y apache2 git

# Start and enable Apache
systemctl enable apache2
systemctl start apache2

# Remove all default web files
rm -rf /var/www/html/*

# Clone projectT repository into /var/www/html
git clone https://github.com/Learn14-know/projectT.git /var/www/html

# Optional: if your repo has a subfolder, move contents to root
# mv /var/www/html/projectT/* /var/www/html/
# rm -rf /var/www/html/projectT

# Fix ownership and permissions
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

