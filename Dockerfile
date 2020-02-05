FROM postgres:12

RUN apt update \
    && apt install -y postgresql-12-cron
RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./config.sh /docker-entrypoint-initdb.d/002-config.sh
COPY ./setup-cron.sql /docker-entrypoint-initdb.d/003-setup-cron.sql