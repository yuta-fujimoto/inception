FROM alpine:3.15

RUN apk add --update-cache openssl \
                        nginx \
                        gettext
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 -sha256 -nodes -days 365 \
        -keyout /etc/nginx/ssl/server.key \
        -out /etc/nginx/ssl/server.crt \
        -subj /C=JA/ST=Kanagawa/L=Yokohanma/O=42Tokyo/OU=Org/CN=fyuta.42.fr

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf.template /etc/nginx/conf.d/default.conf.template
COPY conf/.htpasswd /etc/nginx/.htpasswd
RUN chown nginx:nginx /etc/nginx/.htpasswd

RUN /bin/sh -c "envsubst '$$DOMAIN_NAME' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf"
RUN rm /etc/nginx/conf.d/default.conf.template

ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]
