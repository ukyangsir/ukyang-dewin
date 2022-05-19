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
                                   

echo "*******************************BeginDate********************************"
echo "Init Neovim"
echo "Mission1: Init Ubuntu1804"
echo "Mission2: Install Neovim"
echo "Mission3: Install z.sh"
#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")
#输出当前服务器时间
echo "BeginDate: ${dqtime}"
echo "************************************************************************"


echo "*****************************Init Ubuntu1804****************************"
sh ../Ubuntu1804/init_ubuntu1804.sh
echo "***************************End Init Ubuntu1804**************************"


echo "*****************************Install Neovim*****************************"
sudo apt install -y neovim
mkdir ~/.config/nvim
cp -r ukyang-vimrelated-Windows/Neovide/* ~/.config/nvim/
echo "***************************End Install Neovim***************************"


echo "*****************************Install z.sh*******************************"
git clone git@github.com:rupa/z.git ~/z

echo '. ~/z/z.sh' >> ~/.bashrc
echo 'alias vim='nvim''>> ~/.bashrc
echo 'alias vi='nvim''>> ~/.bashrc
echo 'alias v='nvim''>> ~/.bashrc
source ~/.bashrc
echo "***************************End Install z.sh*****************************"
