#!/bin/bash

#包含与system相关的脚本
source ./system/system_main.sh
source ./docker/docker_main.sh

echo "1.system相关"
echo "2.docker相关"
echo "3.其他"

get_choice() {
  #read -r 用于输入反斜杠'\'
  read -n1 -r -p "请输入序号" choice
  if [ "$choice" = "1" ]; then
    system_main
  elif [ "$choice" = "2" ]; then
    docker_main
  else
    echo "输入错误，请重新输入"
    get_choice
  fi
}
get_choice
