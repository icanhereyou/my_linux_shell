
0.准备git
    1) apt install -y git
    2) ssh-keygen -t ed25519 -C "github 1336746873@qq.com"  (存放于~/.ssh/)
    3) chmod 600 ~/.ssh/密钥(密钥权限必须600,否则失效)
    3) https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent 生成密钥文件参考链接
    4) 公钥添加进github的ssh_key
    5) ssh -T git@github.com 测试连接


本项目用于vps重装后自动配置环境,配置内容有:
1. 开启bbr
2. ssh配置
	(1) 新建ssh用户
	(2) 加入sudoers
	(3) 修改sshd_config: 
		① 禁止root登录
		② 修改ssh端口为18022
3. docker安装
4. ss 或 v2ray
	(1) 域名ssl证书
	(2) 配置v2ray
