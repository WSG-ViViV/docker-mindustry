FROM        openjdk:8-jdk-alpine

LABEL       author="ViViV_" maintainer="sysadmin@whiteshield.ch"

EXPOSE      6567/TCP
EXPOSE      6567/UDP

RUN         apk add --update --no-cache curl ca-certificates openssl git tar bash sqlite \
            && adduser -D -h /home/container container

ADD         . /home/container/
USER        root
ENV         USER=root HOME=/home/container

WORKDIR     /home/container

VOLUME      /data/mindustry

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]