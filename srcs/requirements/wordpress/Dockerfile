FROM alpine:3.15.5

RUN apk add --update-cache openrc \
  php7 \
  php7-fpm \
  php7-common \
  php7-session \
  php7-iconv \
  php7-json \
  php7-gd \
  php7-curl \
  php7-xml \
  php7-mysqli \
  php7-imap \
  php7-cgi \
  fcgi \
  php7-pdo \
  php7-pdo_mysql \
  php7-soap \
  php7-xmlrpc \
  php7-posix \
  php7-mcrypt \
  php7-gettext \
  php7-ldap \
  php7-ctype \
  php7-dom \
  php7-simplexml

RUN mkdir -p /var/www/html

COPY ./conf/.htaccess /var/www/html
COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./conf/php-fpm.conf /etc/php7/php-fpm.conf

ENTRYPOINT [ "php-fpm7" ]
