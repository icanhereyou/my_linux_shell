#!/usr/bin/env bash

docker run -e PASSWORD=abcdefg -p 27000:8388 -p 27000:8388/udp -d --name ss --restart=always shadowsocks/shadowsocks-libev

# tomcat /usr/local/tomcat/conf
docker run --name tomcat -p 27001:8080  -v /root/webapps:/usr/local/tomcat/webapps --restart=always tomcat

# oneindex
docker run -d --name oneindex \
    -p 80:80 --restart=always \
    -v ~/oneindex/config:/var/www/html/config \
    -v ~/oneindex/cache:/var/www/html/cache \
    -e REFRESH_TOKEN='0 * * * *' \
    -e REFRESH_CACHE='*/10 * * * *' \
    setzero/oneindex
