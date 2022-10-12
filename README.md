# guacamole-docker

## Quickstart

```
git clone https://github.com/katelynn620/guacamole-docker.git
cd guacamole-docker
./up.sh
```

Access your guacamole server at `http://<your_host>:8080`.
The default username is `guacadmin` with password `guacadmin`.

## Initialize database manually 

```
docker run -it --rm -v $(pwd)/initdb.sql:/initdb.sql postgres:13 psql -h postgres -U guacamole_user -d guacamole_db -f /initdb.sql
```

## Special Thanks
* https://github.com/boschkundendienst/guacamole-docker-compose