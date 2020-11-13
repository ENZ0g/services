FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx openssl openrc openssh

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=RU/ST=Moscow/L=Moscow/O=21/OU=school/CN=localhost"

COPY ./ssh_header /etc/motd

RUN mkdir -p /run/nginx
COPY ./main_nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /www/test-site/
COPY ./test_site/* ./

COPY nginx_start.sh /
RUN chmod +x /nginx_start.sh
CMD /nginx_start.sh

EXPOSE 80 443 22