#!/bin/bash

# MySQL
sudo mkdir -p /data/mysql/csv
sudo docker run -p 3306:3306 --name docker-mysql -e MYSQL_ROOT_PASSWORD=dockermysql --volume=/data/mysql:/var/lib/mysql -d mysql:8.0.18 --secure-file-priv=""

# MongoDB
sudo docker run -d -p 27017-27019:27017-27019 --name docker-mongo -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=dockermongo -v /data/mongo:/data/db mongo --auth
