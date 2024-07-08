# Simple DuckDB Starter

> **NOTE**: This project is made jus for testing purpose. Plz refer to [Official DuckDB Documentation](https://duckdb.org/docs/) for detailed setup.

## Features

- Init and start DuckDB w/ SQL files in `/duckdb.init.d/`
  - **WARNING**: At this point, all the SQL files in init directory are applied every time launched. If persistent storage is configured, mind that the duplicated records can be generated.
- Persistent storage location is defaulted to `/duckdb.d/duck.db`

## Quickstart

```bash
docker compose build
docker compose run duckdb
```

## Configuration

### Environment Variables

| NAME | DESCRIPTION |
|---|---|
| `DUCKDB_PERSISTENT` | Persistent file name inside of `/duckdb.d/` |
