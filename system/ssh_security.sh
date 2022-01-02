#!/usr/bin/env bash
# 修改ssh端口， 设置允许ssh-keygen登录
# 禁止root用户登录
# 新增普通用户
# 增加普通用户sudo权限
# 给普通用户增加秘钥
# 增加ip限制

function echo_tips(){
  echo "0.备份原sshd_config"
  echo "1.sshd_config 修改端口号,禁止root用户登录"
  echo "2.新增普通用户,sudo权限"

  echo "x.输入x退出"
}

function ssh_security() {
    read -r -p "请输入序号" choice
    case $choice in
    0) # 备份原sshd_config
      cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
      ;;
    1)
      nano /etc/ssh/sshd_config
      ;;
    2)
      # 新增用户
      apt install -y sudo
      useradd -s /bin/bash -d /home/usert -G root,sudo usert
      nano /etc/sudoers
      ;;
    esac
}


function test() {




# 增加公钥到普通用户.ssh目录
su usert
sudo cp authorized_keys ~/.ssh/
sudo chmod 600 ~/.ssh/authorized_keys
}
