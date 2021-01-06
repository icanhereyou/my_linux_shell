
准备, 先运行
apt install -y git

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
