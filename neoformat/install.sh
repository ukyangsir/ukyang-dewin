#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-23
# Description:
# NOTE: 必备脚本6：代码格式化程序安装脚本

# vue/lua
sudo npm install -g prettier lua-fmt

# python
curl -LO https://launchpad.net/ubuntu/+archive/primary/+files/python3-autopep8_1.6.0-1_all.deb
sudo dpkg -i python3-autopep8_1.6.0-1_all.deb
