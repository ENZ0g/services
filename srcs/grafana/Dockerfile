FROM alpine:latest

RUN apk update && apk upgrade

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat

COPY ./grafana-7.3.2.linux-amd64.tar.gz .

RUN	tar -zxvf grafana-7.3.2.linux-amd64.tar.gz

COPY ./grafana.db /grafana-7.3.2/data/

EXPOSE 3000
WORKDIR /grafana-7.3.2/bin/
CMD ./grafana-server