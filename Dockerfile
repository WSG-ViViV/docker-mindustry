FROM        openjdk:8-jdk-alpine

LABEL       author="ViViV_" maintainer="sysadmin@whiteshield.ch"

EXPOSE      6567/TCP
EXPOSE      6567/UDP

RUN         apk add --update --no-cache curl ca-certificates openssl git tar bash sqlite 

RUN         adduser -D -h /var/lib/mindustry mindustry

COPY        Mindustry-server-4.0-alpha-56.jar /usr/local/share/mindustry/server.jar

USER        root

WORKDIR     /var/lib/mindustry

VOLUME      /var/lib/mindustry/.mindustry

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["default"]
