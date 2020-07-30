#!/bin/bash

apt update -y 
apt install apache2 php php-mysql -y

cd /var/www/html

wget https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz

cp -r wordpress/* /var/www/html/

rm -rf index.html

rm -rf wordpress

rm -rf latest.tar.gz


chmod -R 755 wp-content
chown -R www-data:www-data wp-content


systemctl start apache2    
systemctl enable apache2


