#!/bin/bash -x
COMMAND=${@};
CONTAINER=mindustry_server; 
DATE=`date -Iseconds`;

echo "$COMMAND" | docker attach $CONTAINER & 
sleep 1;
docker logs --since "$DATE" $CONTAINER
