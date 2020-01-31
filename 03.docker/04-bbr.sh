#!/usr/bin/env bash
# 开启bbr 及 检查bbr状态 内核版本需4.9+

# 修改支持bbr
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf

# 生效
sysctl -p

#查看是否开启
sysctl net.ipv4.tcp_available_congestion_control

# 查看是否启用bbr
lsmod | grep bbr