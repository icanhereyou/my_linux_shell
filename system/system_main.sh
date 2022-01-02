#!/usr/bin/env bash

source ./bbr.sh
source ./sshd.sh

echo "system.sh: 系统相关脚本"

echo "1.开启bbr加速"
echo "2.修改ssh端口号"

read -n1 -r -p "请输入序列号" choice

if [ "$choice" = "1" ]; then
  sh bbr.sh
elif [ "$choice" = "1" ]; then
  sh sshd.sh
fi
