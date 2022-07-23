FROM nginx:stable-alpine

RUN apk update && apk upgrade && apk add --no-cache openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 -sha256 -nodes -days 365 \
        -keyout /etc/nginx/ssl/fyuta.42.fr.key \
        -out /etc/nginx/ssl/fyuta.42.fr.crt \
        -subj "/C=JA/ST=Kanagawa/L=Yokohanma/O=42Tokyo/OU=Org/CN=fyuta.42.fr"

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY conf/.htpasswd /etc/nginx/.htpasswd

CMD ["nginx", "-g", "daemon off;"]
