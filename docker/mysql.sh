sudo docker run \
  --name mysql01 \
  -itd \
  -p 3306:3306 \
  -v /home/mysql/conf:/etc/mysql/conf.d \
  -v /home/mysql/data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=123456 \
  --restart=always \
  mysql

#参数说明
# -i: 交互式操作
# -t：终端
# -d：后台运行
# --rm: 每次退出
