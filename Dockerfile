FROM        openjdk:8-jdk-alpine

LABEL       author="ViViV_" maintainer="sysadmin@whiteshield.ch"

EXPOSE      6567/TCP
EXPOSE      6567/UDP

RUN         apk add --update --no-cache curl ca-certificates openssl git tar bash sqlite \
            && adduser -D -h /var/lib/mindustry mindustry

ADD         . /var/lib/mindustry

USER        root

WORKDIR     /var/lib/mindustry

VOLUME      /var/lib/mindustry/.mindustry

COPY        ./entrypoint.sh /entrypoint.sh

ENTRYPOINT  /entrypoint.sh
