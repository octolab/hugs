#!/usr/bin/env bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER "guard" WITH PASSWORD 'guard';
    CREATE DATABASE "guard" WITH OWNER "guard";
    \c "guard";
    CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOSQL
