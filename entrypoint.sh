#!/bin/bash -x
# change ownership of home directory
chown mindustry:mindustry -R ~mindustry

# run server as non-elevated user
su mindustry bash -c 'export JAVA_OPTS="'"$JAVA_OPTS"'"; 
                     java -jar /usr/local/share/mindustry/server.jar host'
