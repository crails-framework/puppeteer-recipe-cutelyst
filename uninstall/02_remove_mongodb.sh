#!/bin/bash -ex

source ./variables 2> /dev/null

if [[ -z "$APP_DB_NAME" ]] ; then
  export APP_DB_NAME="db"
fi

mongo "$APP_DB_NAME" --eval "db.dropDatabase()"
