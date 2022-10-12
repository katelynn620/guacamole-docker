#!/bin/sh
PASSWORD=$(date +%s | sha256sum | base64 | head -c 16 ; echo)

sed -i "s/MYPASSWORD/${PASSWORD}/g" docker-compose.yml

docker run --rm guacamole/guacamole:1.4.0 /opt/guacamole/bin/initdb.sh --postgres >initdb.sql

docker-compose up -d