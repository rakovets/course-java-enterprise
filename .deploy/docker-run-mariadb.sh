#!/bin/sh
docker stop mariadb-course-java-enterprise
docker rm mariadb-course-java-enterprise
docker run --name mariadb-course-java-enterprise \
  -v /opt/data/mariadb:/var/lib/mysql \
  -e 'MYSQL_ROOT_PASSWORD=1234' \
  -e 'MYSQL_DATABASE=heroes' \
  -e 'MYSQL_USER=course-java-enterprise' \
  -e 'MYSQL_PASSWORD=xUI7qIopUcJO1qt7' \
  -p 3306:3306 \
  -d mariadb:latest \
  --character-set-server=utf8 \
  --collation-server=utf8_unicode_ci

docker ps