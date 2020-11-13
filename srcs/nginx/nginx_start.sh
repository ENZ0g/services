#!/bin/sh

adduser -D $SSH_USER
echo $SSH_USER:$SSH_PASSWORD | chpasswd
ssh-keygen -A

openrc default
rc-service sshd start
nginx -g "daemon off;"