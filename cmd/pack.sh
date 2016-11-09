#!/bin/bash

docker-compose up -d
docker exec moph_mysql sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" --databases zealots' > ../build/mysql/ze.sql.gz