FROM gliderlabs/alpine:latest

MAINTAINER Wojciech Wójcik <wojtaswojcik@gmail.com>

RUN apk --update add redis \
    && rm -rf /var/cache/apk/*

EXPOSE 6379

VOLUME ["/var/lib/redis"]

CMD [ "redis-server" ]