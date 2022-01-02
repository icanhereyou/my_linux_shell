#!/bin/bash

# 0.安装sudo并修改/etc/sudoers
apt install -y sudo vim
read -p "是否修改/etc/sudoers? y or n: " ans
if [[ $ans == "y" ]]; then
  chmod 640 /etc/sudoers
  echo "%root    ALL=(ALL:ALL) NOPASSWD:ALL" >>/etc/sudoers
  vim /etc/sudoers
  chmod 440 /etc/sudoers
else
  echo "no change!"
fi

# 1. 创建sshd登录用户
read -p "是创建新用户? y or n: " ans
if [[ $ans == "y" ]]; then
  useradd -g root -s /bin/bash -p 4U+Xy$,XXCw7 -m -d /home/usert -N usert
else
  echo "no change!"
fi

# 2. 修改sshd端口
read -p "修改/etc/ssh/sshd_config 
1. 端口号18022 
2. PermitRootLogin no ? y or n: " ans
if [[ $ans == "y" ]]; then
  chmod 640 /etc/ssh/sshd_config
  vim /etc/ssh/sshd_config
  chmod 440 /etc/ssh/sshd_config
  systemctl restart sshd
else
  echo "no change!"
fi
