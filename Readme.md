# PostgreSQL with pg_cron enabled

## Build image
docker build -t postgre .

## Run postgres
docker run -it -e POSTGRES_PASSWORD=test -p 5432:5432 -d postgre