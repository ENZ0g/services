FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add mysql mysql-client openrc

COPY ./create_test_db.sh /db_srcs/
COPY ./wordpress_db_dump.sql /db_srcs/

VOLUME ["/sys/fs/cgroup/"]

COPY ./mariadb_start.sh /db_srcs/
COPY ./mariadb.cnf /db_srcs/
RUN chmod +x /db_srcs/mariadb_start.sh

EXPOSE 3306

CMD /db_srcs/mariadb_start.sh