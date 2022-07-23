FROM nginx:stable-alpine

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./conf/.htpasswd /etc/nginx/.htpasswd

CMD ["nginx", "-g", "daemon off;"]
