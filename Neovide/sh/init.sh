#!/bin/bash
#
#**************************************************
# Author:         ukyang                          *
# E-mail:         ukyang_ma@163.com               *
# Date:           2022-05-16        
# Description:                                    *
# Copyright 2022 by ukyang.All Rights Reserved    *
#**************************************************
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
echo "Mission1: Change sources.list && Add ppa"
echo "Mission2: Install Something Necessary"
echo "Mission3: Install Neovim"
echo "Mission4: Install z.sh"
#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")
#输出当前服务器时间
echo "BeginDate: ${dqtime}"
echo "************************************************************************"


echo "*********************Change sources.list && Add ppa*********************"
sudo rm -rf /etc/apt/sources.list
sudo cp ~/ukyang-vimrelated-Windows/Neovide/sh/sources.list /etc/apt/

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt upgrade
echo "*******************End Change sources.list && Add ppa*******************"


echo "**********************Install Something Necessary***********************"
# nodejs and npm need to install manually
sudo apt install -y curl git openssh-server net-tools zip unzip
echo "********************End Install Something Necessary*********************"


echo "*****************************Install Neovim*****************************"
sudo apt install -y neovim
mkdir ~/.config/nvim
cp -r ukyang-vimrelated-Windows/Neovide/* ~/.config/nvim/
echo 'alias vim='nvim''>> ~/.bashrc
echo 'alias vi='nvim''>> ~/.bashrc
echo 'alias v='nvim''>> ~/.bashrc
echo "***************************End Install Neovim***************************"


echo "*****************************Install z.sh*******************************"
git clone git@github.com:rupa/z.git ~/z

echo '. ~/z/z.sh' >> ~/.bashrc
echo "***************************End Install z.sh*****************************"


source ~/.bashrc


echo "**********************************End***********************************"
echo "End Init ukyang's Ubuntu1804"
echo "Mission1 complete"
echo "Mission2 complete"
echo "Mission3 complete"
echo "Mission4 complete"
#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")
#输出当前服务器时间
echo "BeginDate: ${dqtime}"
echo "************************************************************************"
