FROM gliderlabs/alpine:latest

MAINTAINER Wojciech Wójcik <wojtaswojcik@gmail.com>

RUN apk --update add redis

EXPOSE 6379

VOLUME  /var/lib/redis