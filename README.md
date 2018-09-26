# Docker mindustry server 4.0

## Docker-Compose Commands

Just download docker-compose.yml 

Host Server : `docker-compose up -d`

## Docker Commands

Host Server : `docker run --name mindustry -i -p 6567:6567/tcp -p 6567:6567/udp viviv/mindustry`

# Manage Mindustry Console

## Attach Console
Attach terminal with `docker attach --sig-proxy=false mindustry_server`

ATTENTION! The terminal will not have any indicators that you have connected to the console. Just type help to get started.

### Detach Console
To detach the console type Ctrl-C . The server should remain running.

### Console Commands
The script 'console.sh' lets you run commands in the console from outside the container with output.

usage: `./console.sh status`

WARNING! This script seems to perform well but is not very well tested. Use with caution!

### Enjoy !!
