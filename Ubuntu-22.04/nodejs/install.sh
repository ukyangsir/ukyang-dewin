#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-06-04
# Description:
# NOTE: 必备脚本3： nodejs && npm 安装脚本

cd /usr/local
echo "ukyang" | sudo -S wget https://npmmirror.com/mirrors/node/v16.15.0/node-v16.15.0-linux-x64.tar.xz
echo ""
sudo tar -xf node-v16.15.0-linux-x64.tar.xz
sudo rm -rf node-v16.15.0-linux-x64.tar.xz
sudo mv node-v16.15.0-linux-x64 node
sudo chmod -R 777 node
cd ~
