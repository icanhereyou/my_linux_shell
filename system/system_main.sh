#!/usr/bin/env bash

function echo_tips() {
  echo "system.sh: 系统相关脚本----------"
  echo "1.开启bbr加速"
  echo "2.ssh安全性"
  echo "3.查看cpu核数"
  echo "x.输入x返回首页"
}

function system_main() {

  echo_tips
  read -r -p "请输入序列号" choice

  case $choice in
  1) bash ./system/bbr.sh ;;
  2) bash ./system/ssh_security.sh ;;
  3) bash ./system/cpu_num.sh ;;
  x) exit ;;
  *) system_main ;;
  esac

}
system_main
