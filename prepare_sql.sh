#!/bin/bash

dbexec troublemaker-db "$(cat getMaxScore.sql)" > dbdump &&
cat dbdump | node transform.js > sqlToRun.sql &&
# dbexec amoeba "$(cat sqlToRun.sql)"

psql -d amoeba -f sqlToRun.sql