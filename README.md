# Docker mindustry server 4.0

## Docker-Compose Commands

Just download docker-compose.yml 

Host Server : `docker-compose up -d`

## Docker Commands

Host Server : `docker run --name mindustry -ti -p 6567:6567/tcp -p 6567:6567/udp viviv/mindustry`

# Manage Mindustry Console

## Attach Console
Attach terminal with `docker attach mindustry_server`

### Detach Console
To detach the tty without shutting down the server, 
use the escape sequence Ctrl-p + Ctrl-q

### Enjoy !!
