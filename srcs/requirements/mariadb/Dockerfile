FROM alpine:3.15.5

RUN apk --update-cache add mariadb && apk add mariadb-client

COPY tool/configure.sh /tmp/configure.sh
COPY conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

CMD [ "/bin/sh", "/tmp/configure.sh" ]
