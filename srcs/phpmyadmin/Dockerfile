FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add php7 php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom mariadb-client php7-session php7-mbstring


RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
RUN tar -xzf phpMyAdmin-5.0.4-english.tar.gz
RUN mv phpMyAdmin-5.0.4-english phpmyadmin
RUN rm -f phpMyAdmin-5.0.4-english.tar.gz
COPY ./config.inc.php /phpmyadmin/

EXPOSE 5000

COPY ./phpmyadmin_start.sh .
RUN chmod +x phpmyadmin_start.sh
CMD /phpmyadmin_start.sh