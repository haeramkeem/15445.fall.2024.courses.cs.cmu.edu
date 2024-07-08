# DBMS playground powered by Docker Compose

> **NOTE**: This repository is based on the context of [CMU CS 15445](https://15445.courses.cs.cmu.edu/).

## Index

- [DuckDB](./duckdb)
- [MySQL](./mysql)
- [PostgreSQL](./postgres)

## Basic information

- Credential (Except for the DuckDB)
  - All of the credentials are configured w/ same id:passwd (`toor:toor`) for simplicity.
- Port (Except for the DuckDB)
  - Each DBMS container opens default port for the DBMS (e.g. `5432` for PostgreSQL)
  - And web client container opens `+20000` port for that DBMS (e.g. `25432` for PGAdmin)
- Init SQL files
  - SQL files for the initiation are stored in same directory named `init`.
