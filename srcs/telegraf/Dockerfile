FROM alpine:latest

RUN apk update && apk upgrade

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat

COPY ./telegraf-1.16.1_linux_amd64.tar.gz .
RUN	tar xf telegraf-1.16.1_linux_amd64.tar.gz && mv telegraf-1.16.1 telegraf

COPY ./telegraf.conf .

CMD /telegraf/usr/bin/telegraf --config /telegraf.conf