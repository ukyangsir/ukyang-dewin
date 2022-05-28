#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-28
# Description:


echo -e "\e[36m======================Intall python3.9 && pip3.9========================\e[0m"
cd ~
curl -LO https://www.python.org/ftp/python/3.9.12/Python-3.9.12.tar.xz
tar -xf Python-3.9.12.tar.xz 
echo "ukyang"|sudo -S rm -rf Python-3.9.12.tar.xz
echo ""
cd ~/Python-3.9.12
sudo ./configure --enable-optimizations --with-lto --enable-shared
sudo make -j8
sudo make altinstall
sudo ln -s /usr/local/lib/libpython3.9.so.1.0 /usr/lib/
sudo rm -rf ~/Python-3.9.12

echo -e "\e[36m==============================Intall pip3===============================\e[0m"
sudo apt install -y python3-pip 

echo -e "\e[36m=========================Intall python-related==========================\e[0m"
pip3 install requests
pip3.9 install requests
cd ~/.config/nvim/plugged/Terslation
sudo make install
cd ~
