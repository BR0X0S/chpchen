#!/bin/bash

# Create FTP user
useradd -d /var/www/wordpress -s /bin/bash $FTP_USER
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd

usermod -d /var/www/wordpress/ $FTP_USER

chmod 777 /var/www/wordpress/

# Start vsftpd
exec vsftpd /etc/vsftpd.conf