#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-28
# Description: 
# NOTE: 必备脚本5：python3.9 安装脚本


# python3.9 related(completing......)
     # python-pip python3-dev python3-setuptools python3-venv \
curl -LO https://www.python.org/ftp/python/3.9.12/Python-3.9.12.tar.xz
tar -xf Python-3.9.12.tar.xz 
cd ~/Python-3.9.12.tar.xz
sudo ./configure --enable-optimizations --with-lto --enable-shared
sudo make -j


sudo apt install -y python3-pip 
pip install requests




