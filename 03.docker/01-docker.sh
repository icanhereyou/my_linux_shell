#!/usr/bin/env bash
# 安装docker

apt-get remove docker docker-engine docker.io containerd runc

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

#buster 为debian发行版本
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   buster \
   stable"

apt update

apt-get install -y docker-ce docker-ce-cli containerd.io