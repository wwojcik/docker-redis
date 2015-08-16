FROM gliderlabs/alpine:latest

MAINTAINER Wojciech Wójcik <wojtaswojcik@gmail.com>

ENV TIMEZONE=Europe/Warsaw

RUN apk --update add redis tzdata && \
    rm -rf /var/cache/apk/* && \
    cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime && \
    echo "$TIMEZONE" >  /etc/timezone

EXPOSE 6379

VOLUME ["/var/lib/redis"]

CMD [ "redis-server" ]