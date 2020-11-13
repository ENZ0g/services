FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add openssl vsftpd openrc

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/vsftpd/vsftpd.pem \
    -out /etc/vsftpd/vsftpd.pem \
    -subj "/C=RU/ST=Moscow/L=Moscow/O=21/OU=school/CN=localhost"

COPY ./start.sh .
RUN chmod +x start.sh
COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE	21

CMD ./start.sh