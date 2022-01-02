#!/bin/bash

function echo_tips() {
  echo "cpu_num.sh: 查看CPU个数------------"
  echo "1.查看物理CPU个数"
  echo "2.查看每个物理CPU中core的个数(即核数)"
  echo "3.查看逻辑CPU的个数"
  echo "x.输入x退出"
}

function cpu_num() {
  read -r -p "请输入序号" choice
  case $choice in
  1)
    cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l
    ;;
  2)
    cat /proc/cpuinfo | grep "cpu cores" | uniq
    ;;
  3)
    cat /proc/cpuinfo | grep "processor" | wc -l
    ;;
  "x") exit ;;
  *)
    echo "输入'$choice'错误，请重新输入"
    ;;
  esac
}
cpu_num





