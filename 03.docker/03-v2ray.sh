#!/usr/bin/env bash

docker run -d --name v2ray -v /etc/v2ray:/etc/v2ray -p 27002:27002 v2ray/official --restart=always v2ray -config=/etc/v2ray/config.json

