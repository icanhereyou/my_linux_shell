#!/usr/bin/env bash

function echo_tips() {
  echo "1.安装图形界面"
  echo "2.设置默认图形界面"
  echo "3.立即切换为图形界面(需重启)"
  echo "x.输出x退出"
}

function install_graphics() {
  apt update
  apt install gnome -y
}

# 设置默认为图形界面启动
function set_default_graphics() {
  systemctl set-default graphical.target
}

function start_graphics() {
  if [ $UID -eq 0 ]; then
    # 立即切换为图形界面 root
    init 5
  else
    # 立即切换为图形界面 非root
    startx
  fi
}

function graphics() {
  read -r -p "请输入序号" choice
  case $choice in
  1) install_graphics ;;
  2) set_default_graphics ;;
  3) start_graphics ;;
  "x") exit ;;
  *) echo "输入'$choice'错误，请重新输入" ;;
  esac
}
graphics
