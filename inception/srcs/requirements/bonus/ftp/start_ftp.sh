#!/bin/bash

useradd -m -d /var/www/wordpress -s /bin/bash $FTP_USER

echo "$FTP_USER:$FTP_PASSWORD" | chpasswd

chmod 777 /var/www/wordpress/

exec vsftpd /etc/vsftpd.conf