#!/bin/bash -ex

source ./variables 2> /dev/null

cat cutelyst.backup  > "$APP_PATH/backup.sh"
cat cutelyst.restore > "$APP_PATH/restore.sh"
chmod +x "$APP_PATH/backup.sh" "$APP_PATH/restore.sh"
