#!/usr/bin/env bash

apt update
apt install gnome -y

# 设置默认为图形界面启动
systemctl set-default graphical.target

# 立即切换为图形界面 root
init 5

# 立即切换为图形界面 非root
#startx
