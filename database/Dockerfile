FROM mysql:latest

ENV MYSQL_DATABASE=application \
    MYSQL_ROOT_PASSWORD=admin

ADD backup.sql /docker-entrypoint-initdb.d

EXPOSE 3306
