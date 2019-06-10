#!/bin/sh
yum install -y httpd
systemctl start httpd
systemctl  enabled httpd
echo "<html><h1>Hello.....!! This is Narendra087@gmail.com ^^</h2></html>" > /var/www/html/index.html
