#!/bin/bash -ex

systemctl status $1.service
exit $?
