#!/bin/sh

echo "CREATE DATABASE $DB_NAME DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" >> create_test_db.sql
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> create_test_db.sql
echo "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%';" >> create_test_db.sql
echo "FLUSH PRIVILEGES;" >> create_test_db.sql
echo "EXIT" >> create_test_db.sql