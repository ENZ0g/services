FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add php7 php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom mariadb-client

RUN wget https://wordpress.org/latest.tar.gz
RUN tar xzf latest.tar.gz && rm -rf latest.tar.gz
COPY ./wp-config.php /wordpress/

WORKDIR /run/nginx/
EXPOSE 5050

WORKDIR /
COPY ./start.sh .
RUN chmod +x start.sh
CMD /start.sh

# wpuser/wppassword
# firstuser/firstpassword
# seconduser/secondpassword