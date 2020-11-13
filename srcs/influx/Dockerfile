FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add influxdb
RUN mkdir -p /var/lib/influxdb/
CMD influxd -config /etc/influxdb.conf
