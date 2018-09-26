#!/bin/bash -x
Server_Args=$1

# change ownership of home directory
chown mindustry:mindustry -R ~mindustry

# run server as non-elevated user
su mindustry bash -c 'java -jar /usr/local/share/mindustry/server.jar '"${Server_Args}"
