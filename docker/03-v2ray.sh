#!/usr/bin/env bash

$ sudo docker run -d --name v2ray -v /etc/v2ray:/etc/v2ray -p 8888:8888 v2fly/v2fly-core  v2ray -config=/etc/v2ray/config.json
