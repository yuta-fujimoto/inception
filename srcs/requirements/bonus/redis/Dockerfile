FROM alpine:3.15.5

RUN apk --update-cache add redis

COPY conf/redis.conf /etc/redis.conf

CMD [ "redis-server", "/etc/redis.conf" ]
