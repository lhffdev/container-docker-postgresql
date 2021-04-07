#!/bin/bash

psql -U $POSTGRES_USER -c 'DROP DATABASE gove_app_development;'

psql -U $POSTGRES_USER -c 'CREATE DATABASE gove_app_development;'

pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $POSTGRES_USER -d gove_app_development /backup/latest.dump