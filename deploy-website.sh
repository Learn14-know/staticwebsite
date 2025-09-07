#!/bin/bash

# Enable and start Apache
systemctl enable apache2
systemctl start apache2

# Remove default Apache index page
rm -f /var/www/html/index.html

# Option 1: Clone entire repository (recommended if multiple files)
rm -rf /var/www/html/projectT
git clone https://github.com/Learn14-know/projectT.git /var/www/html/



# Set proper permissions
chown -R www-data:www-data /var/www/html/projectT
chmod -R 755 /var/www/html/projectT
