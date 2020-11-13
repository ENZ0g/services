#!/bin/sh

openrc default
/etc/init.d/mariadb setup

mv /db_srcs/mariadb.cnf /etc/mysql/my.cnf
rc-service mariadb start
sh /db_srcs/create_test_db.sh
mysql < /create_test_db.sql
mysql testdb < /db_srcs/wordpress_db_dump.sql
rc-service mariadb stop

/usr/bin/mysqld_safe