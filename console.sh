#!/bin/bash 
COMMAND=${@};
CONTAINER=mindustry_server; 
DATE=`date -Iseconds`;

echo "$COMMAND" | docker attach $CONTAINER & 
PID=$$

# reasonably speaking, logs dont happen til action is done
while [ "$LOGS" == "" ]; do
    LOGS=$(docker logs --since "$DATE" $CONTAINER)
done

# sleep just in case stuff is still going on
sleep 1

echo "$LOGS"
{kill $PID} 2>/dev/null
