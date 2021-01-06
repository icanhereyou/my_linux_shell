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
   $(lsb_release -cs) \
   stable"

apt update

apt-get install -y docker-ce docker-ce-cli containerd.io

systemctl enable docker

# 进入docker
docker exec -it name /bin/bash