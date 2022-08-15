FROM alpine:3.15.5

RUN apk --update-cache add mariadb \ 
		mariadb-client

COPY conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

RUN mkdir -p /run/mysqld
RUN	chown -R mysql:mysql /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod -R 700 /var/lib/mysql

ENTRYPOINT [ "/usr/bin/mysqld" ]
CMD [ "--user=mysql", "--console" ]
