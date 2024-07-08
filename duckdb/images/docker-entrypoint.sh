#!/bin/bash

cat /duckdb.init.d/*.sql > /init.sql
/duckdb -init /init.sql /duckdb.d/${DUCKDB_PERSISTENT}
