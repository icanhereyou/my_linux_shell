#!/usr/bin/env bash
# 升级debian9到10

# 升级debian
sed -i 's/stretch/buster/g' /etc/apt/sources.list
apt update
apt dist-upgrade -y

reboot