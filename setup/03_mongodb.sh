#!/bin/bash -ex

source ./variables 2> /dev/null

mongodb_version=4.4
key_url="https://www.mongodb.org/static/pgp/server-$mongodb_version.asc"
repository="https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/$mongodb_version multiverse"

wget -qO - "$key_url" | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] $repository" > /etc/apt/sources.list.d/mongodb-org-$mongodb_version.list

apt-get update
apt-get install -y mongodb-org

mkdir -p /home/$APP_USER/db
chown -R $APP_USER:$APP_USER /home/$APP_USER/db
