#!/usr/bin/env bash

echo "bbr.sh: 本脚本用于检查bbr是否开启, 内核版本需4.9+"

uname -r
echo "内核版本是否大于4.9,enter yes,y; no,n"
read kernel_version

if [ $kernel_version = "no" ] || [ $kernel_version = "n" ]; then
    exit
fi

# 用于查看tcp状态的函数
check_tcp_congestion_control_status(){
  echo "查看可以用的拥塞控制算法"
  sysctl net.ipv4.tcp_available_congestion_control
  echo "查看现在使用的拥塞控制算法"
  sysctl net.ipv4.tcp_congestion_control
  sleep 3
}

flag=0
check_tcp_congestion_control_status

# 如果返回结果不存在bbr则开启bbr
#info=$(sysctl net.core.default_qdisc |grep "fq")
info=$(cat /etc/sysctl.conf |grep "net.core.default_qdisc" |grep fq)
if [ -z $info ]; then
    echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
    flag=1
fi

#info=$(sysctl net.ipv4.tcp_congestion_control|grep "bbr")
info=$(cat /etc/sysctl.conf |grep "net.ipv4.tcp_congestion_control" |grep bbr)
if [ -z $info ]; then
    echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
    flag=1
fi

#若有修改则生效
if [ $flag -eq 1 ]; then
    sysctl -p
    check_tcp_congestion_control_status
    echo "检查BBR是否正常运行"
    lsmod | grep bbr
    sleep 3
fi
