FROM postgres:9.6

RUN mkdir -p /docker-entrypoint-initdb.d
COPY confluence.sql /docker-entrypoint-initdb.d/confluence.sql
COPY jira.sql /docker-entrypoint-initdb.d/jira.sql
COPY dir.sh /docker-entrypoint-initdb.d/dir.sh
