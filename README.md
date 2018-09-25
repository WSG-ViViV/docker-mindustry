# Docker mindustry server 4.0

## Docker-Compose Commands

Just download docker-compose.yml 

Host Server : `docker-compose up -d`

## Docker Commands

Host Server : `docker run --name mindustry -ti -p 6567:6567/tcp -p 6567:6567/udp viviv/mindustry`

# Manage Mindustry Console

## Attach Console
Attach terminal with `docker attach --sig-proxy=false mindustry_server`

ATTENTION! The terminal will not have any indicators that you have connected to the console. Just type help to get started.

### Detach Console
To detach the console type Ctrl-C . The server should remain running.

### Enjoy !!
