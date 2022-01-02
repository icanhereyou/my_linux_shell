#!/bin/bash

#输出提示
function echo_tips() {
  echo "这是主页---------------"
  echo "1.system相关"
  echo "2.docker相关"
  echo "3.其他"
}

function main() {

  echo_tips

  #read -r 用于输入反斜杠'\'
  read -r -p "请输入序号" choice

  case $choice in
  1)
    echo $choice
    bash ./system/system_main.sh
    ;;
  2)
    bash ./docker/docker_main.sh
    ;;
  *)
    echo "输入'$choice'错误，请重新输入"
    ;;
  esac

  main
}
main
