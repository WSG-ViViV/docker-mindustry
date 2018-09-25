#!/bin/bash
# change ownership of home directory
chown mindustry:mindustry -R ~mindustry

# run server as non-elevated user
su mindustry java -jar -Xms1G -Xmx2G Mindustry-server-4.0-alpha-56.jar host
