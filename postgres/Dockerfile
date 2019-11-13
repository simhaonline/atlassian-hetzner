FROM postgres:9.6

RUN mkdir -p /docker-entrypoint-initdb.d
COPY init-db.sql /docker-entrypoint-initdb.d/init-db.sql
COPY init-dr.sh /docker-entrypoint-initdb.d/init-dr.sh
