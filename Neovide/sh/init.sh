#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-21
# Description:
# NOTE: 必备脚本1： Ubuntu22.04 初始化


echo -e "\033[33m ___  ___  ___  __        ___    ___ ________  ________   ________      \033[0m"
echo -e "\033[33m|\  \|\  \|\  \|\  \     |\  \  /  /|\   __  \|\   ___  \|\   ____\     \033[0m"
echo -e "\033[33m\ \  \\\  \ \  \/  /|_   \ \  \/  / | \  \|\  \ \  \\ \  \ \  \___|     \033[0m"
echo -e "\033[33m \ \  \\\  \ \   ___  \   \ \    / / \ \   __  \ \  \\ \  \ \  \  ___   \033[0m"
echo -e "\033[33m  \ \  \\\  \ \  \\ \  \   \/  /  /   \ \  \ \  \ \  \\ \  \ \  \|\  \  \033[0m"
echo -e "\033[33m   \ \_______\ \__\\ \__\__/  / /      \ \__\ \__\ \__\\ \__\ \_______\ \033[0m"
echo -e "\033[33m    \|_______|\|__| \|__|\___/ /        \|__|\|__|\|__| \|__|\|_______| \033[0m"
echo -e "\033[33m                        \|___|/                                         \033[0m"


echo "*********************************Begin**********************************"
echo "Init ukyang's Ubuntu1804"
echo "Mission1: Change sources.list && Add ppa && Add wsl.conf && Add lsp path"
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
echo "ukyang"|sudo -S chmod 777 -R ~/ukyang-vimrelated-Windows
sudo rm -rf /etc/apt/sources.list
sudo cp ~/ukyang-vimrelated-Windows/Neovide/sh/sources.list /etc/apt/

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt upgrade

sudo cp ~/ukyang-vimrelated-Windows/Neovide/sh/wsl.conf /etc/
sudo mkdir -p ~/.cache/nvim
sudo touch ~/.cache/nvim/lsp-installer.log
sudo chmod 777 -R ~/.cache/nvim
echo "*******************End Change sources.list && Add ppa*******************"


echo "**********************Install Something Necessary***********************"
# nodejs and npm need to install manually
sudo apt install -y curl wget git openssh-server net-tools \
  tar zip unzip \
  python-pip python3-dev python3-setuptools python3-venv \
  build-essential \
  fd-find ripgrep \
  python3-autopep8

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
echo "********************End Install Something Necessary*********************"


echo "*****************************Install Neovim*****************************"
sudo apt install -y neovim
sudo mkdir -p ~/.config/nvim
sudo cp -r ~/ukyang-vimrelated-Windows/Neovide/* ~/.config/nvim/
sudo chmod -R 777 ~/.config/nvim
echo "alias vim='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim'">> ~/.bashrc
echo "alias vi='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim'">> ~/.bashrc
echo "alias v='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim'">> ~/.bashrc
echo "***************************End Install Neovim***************************"


echo "*****************************Install z.sh*******************************"
git clone git@github.com:rupa/z.git ~/z

echo '. ~/z/z.sh' >> ~/.bashrc
echo "***************************End Install z.sh*****************************"


echo "************************Install python-related**************************"
sudo apt install -y python3-pip 
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
echo "EndDate: ${dqtime}"
echo "************************************************************************"
