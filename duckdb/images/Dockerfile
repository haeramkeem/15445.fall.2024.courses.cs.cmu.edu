FROM ubuntu:jammy

RUN apt-get update -y \
    && apt-get install -y wget unzip \
    && apt-get clean

RUN wget https://github.com/duckdb/duckdb/releases/download/v1.0.0/duckdb_cli-linux-aarch64.zip \
    && unzip duckdb_cli-linux-aarch64.zip

RUN mkdir -pv /duckdb.init.d /duckdb.d
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/bin/sh", "-c", "/docker-entrypoint.sh"]
