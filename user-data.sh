#!/bin/bash 

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enabble httpd

echo "<h1>Hello World from AWS EC2</h1>" > /var/www/html/index.html
