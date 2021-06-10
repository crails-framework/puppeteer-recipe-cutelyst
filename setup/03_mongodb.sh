#!/bin/bash -ex

source ./variables 2> /dev/null

apt-get install -y mongodb

mkdir -p /home/$APP_USER/db
chown -R $APP_USER:$APP_USER /home/$APP_USER/db
