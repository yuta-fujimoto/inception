if [ ! -d "/run/mysqld" ]; then
	mkdir -p /run/mysqld
	chown -R mysql:mysql /run/mysqld
fi

chown -R mysql:mysql /var/lib/mysql
chmod -R 700 /var/lib/mysql

exec /usr/bin/mysqld --user=mysql --console
