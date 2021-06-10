#!/bin/bash -ex

source ./variables 2> /dev/null

mkdir -p "$APP_PATH"
mkdir -p "$APP_PATH/runtime"

bash cutelyst.env   > "$APP_PATH/env.puppet"
cp cutelyst.launch "$APP_PATH/runtime/launch.sh"
cp cutelyst.stop   "$APP_PATH/runtime/stop.sh"

if [ ! -f "$APP_PATH/env" ] ; then
  bash default.env > "$APP_PATH/env"
fi

chmod +x "$APP_PATH/runtime/"{launch,stop}.sh
