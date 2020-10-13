#!/usr/bin/sh

docker pull postgres:12

sudo  docker run --name some-postgres -v /data/postgres:/var/lib/postgresql/data -e POSTGRES_DB=abd -e POSTGRES_USER=pedro -e POSTGRES_PASSWORD=dockerpostgres -d postgres:12

