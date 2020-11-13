#!/bin/sh

adduser -D $FTP_USER
echo $FTP_USER:$FTP_PASSWORD | chpasswd

openrc default
rc-service vsftpd stop
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf