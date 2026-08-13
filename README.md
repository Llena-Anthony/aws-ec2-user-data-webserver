# AWS EC2 Web Server with User Data

## Overview

This project demonstrates how to deploy and automatically configure
an Apache web server on an Amazon EC2 instance using EC2 User Data.

The instance installs Apache during its first boot, starts the web server,
and serves a simple webpage over HTTP.

## Architecture

Internet
   |
   v
Internet Gateway
   |
   v
Public Subnet
   |
   v
EC2 Instance
   |
   v
Apache HTTP Server

## AWS Services Used

- Amazon EC2
- Amazon VPC
- Security Groups
- Internet Gateway
- Public IPv4 Address
- EC2 User Data

## Implementation

1. Created an EC2 instance.
2. Configured the instance inside a public subnet.
3. Attached a security group allowing HTTP and SSH access.
4. Added a User Data bootstrap script.
5. Installed and started Apache automatically.
6. Accessed the web server through the instance's public IPv4 address.

## User Data Script

```bash
#!/bin/bash

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

echo "<h1>Hello World from AWS EC2</h1>" > /var/www/html/index.html