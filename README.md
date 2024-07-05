# DBMS playground powered by Docker Compose

## Index

- [MySQL](./mysql)
- [PostgreSQL](./postgres)

## Basic information

- Credential
  - All of the credentials are configured w/ same id:passwd (`toor:toor`) for simplicity.
- Port
  - Each DBMS container opens default port for the DBMS (e.g. `5432` for PostgreSQL)
  - And web client container opens `+20000` port for that DBMS (e.g. `25432` for PGAdmin)
- Init SQL files
  - SQL files for the initiation are stored in same directory named `init`.
