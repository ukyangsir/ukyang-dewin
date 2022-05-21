#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-21
# Description:
# 自定义 Ubuntu18.04 初始化脚本，source 运行脚本即可

echo " ___  ___  ___  __        ___    ___ ________  ________   ________      "
echo "|\  \|\  \|\  \|\  \     |\  \  /  /|\   __  \|\   ___  \|\   ____\     "
echo "\ \  \\\  \ \  \/  /|_   \ \  \/  / | \  \|\  \ \  \\ \  \ \  \___|     "
echo " \ \  \\\  \ \   ___  \   \ \    / / \ \   __  \ \  \\ \  \ \  \  ___   "
echo "  \ \  \\\  \ \  \\ \  \   \/  /  /   \ \  \ \  \ \  \\ \  \ \  \|\  \  "
echo "   \ \_______\ \__\\ \__\__/  / /      \ \__\ \__\ \__\\ \__\ \_______\ "
echo "    \|_______|\|__| \|__|\___/ /        \|__|\|__|\|__| \|__|\|_______| "
echo "                        \|___|/                                         "


echo "*********************************Begin**********************************"
echo "Init ukyang's Ubuntu1804"
echo "Mission1: Change sources.list && Add ppa && Add wsl.conf && Add lsp path && Add plugged path"
echo "Mission2: Install Something Necessary"
echo "Mission3: Install Neovim"
echo "Mission4: Install z.sh"
echo "Mission5: Install python-related"
#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")
#输出当前服务器时间
echo "BeginDate: ${dqtime}"
echo "************************************************************************"


echo "*********************Change sources.list && Add ppa*********************"
sudo chmod 777 -R ~/ukyang-vimrelated-Windows
sudo rm -rf /etc/apt/sources.list
sudo cp ~/ukyang-vimrelated-Windows/Neovide/sh/sources.list /etc/apt/

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt upgrade

sudo cp ~/ukyang-vimrelated-Windows/Neovide/sh/wsl.conf /etc/
sudo mkdir ~/.cache/nvim
sudo touch ~/.cache/nvim/lsp-installer.log
sudo mkdir -p Neovim/plugged
sudo chmod 777 -R ~/.cache/nvim
sudo chmod 777 -R ~/Neovim
echo "*******************End Change sources.list && Add ppa*******************"


echo "**********************Install Something Necessary***********************"
# nodejs and npm need to install manually
sudo apt install -y curl git openssh-server net-tools \
  zip unzip \
  python3-dev python3-pip python3-setuptools python3-venv python-pip

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
echo "********************End Install Something Necessary*********************"


echo "*****************************Install Neovim*****************************"
sudo apt install -y neovim
mkdir ~/.config/nvim
cp -r ukyang-vimrelated-Windows/Neovide/* ~/.config/nvim/
echo 'alias vim='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim''>> ~/.bashrc
echo 'alias vi='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim''>> ~/.bashrc
echo 'alias v='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim''>> ~/.bashrc
echo "***************************End Install Neovim***************************"


echo "*****************************Install z.sh*******************************"
git clone git@github.com:rupa/z.git ~/z

echo '. ~/z/z.sh' >> ~/.bashrc
echo "***************************End Install z.sh*****************************"


echo "************************Install python-related**************************"
pip install requests
echo "**********************End Install python-related************************"

source ~/.bashrc


echo "**********************************End***********************************"
echo "End Init ukyang's Ubuntu1804"
echo "Mission1 complete"
echo "Mission2 complete"
echo "Mission3 complete"
echo "Mission4 complete"
echo "Mission5 complete"
#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")
#输出当前服务器时间
echo "BeginDate: ${dqtime}"
echo "************************************************************************"
