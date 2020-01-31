#!/usr/bin/env bash
# 修改ssh端口为26999， 设置允许ssh-keygen登录
# 新增普通用户
# 增加普通用户sudo权限
# 给普通用户增加秘钥

apt install -y sudo vim

# 备份原sshd_config
mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cp sshd_config /etc/ssh

# 新增用户
useradd -s /bin/bash -m usert -g root -p "(NV7*,d5ps+("
echo "%root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/sudoers

# 增加公钥到普通用户.ssh目录
su usert
sudo cp authorized_keys ~/.ssh/
sudo chmod 600 ~/.ssh/authorized_keys