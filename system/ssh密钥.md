ssh-keygen -t rsa 生成

id_rsa 秘钥
id_rsa.pub 公钥 （放服务器上authorized_keys）

4hL^=rr2H5X~



0.准备git
1) apt install -y git
2) ssh-keygen -t ed25519 -C "github 1336746873@qq.com"  (存放于~/.ssh/)
3) chmod 600 ~/.ssh/密钥(密钥权限必须600,否则失效)
3) https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent 生成密钥文件参考链接
4) 公钥添加进github的ssh_key
5) ssh -T git@github.com 测试连接