#!/bin/bash -ex

source ./variables 2> /dev/null

apt-get update

apt-get install -y software-properties-common

add-apt-repository universe
apt-get update

apt-get install -y \
  build-essential \
  qt5-default \
  wget \
  rsync

if [[ ! -z "$REQUIRE_PACKAGES" ]] ; then
  apt-get install -y $REQUIRE_PACKAGES
fi
