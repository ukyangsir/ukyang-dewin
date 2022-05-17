#!/bin/bash
#
#**************************************************
# Author:         ukyang                          *
# E-mail:         ukyang_ma@163.com               *
# Date:           2022-05-16        
# Description:                                    *
# Copyright 2022 by ukyang.All Rights Reserved    *
#**************************************************

echo "============================================================"
echo "==  ==    ==  ==  ==  ==  ==    ==     ==   ==  ========  =="
echo "==  ==    ==  ===      =  =    =  =    ==== ==  ==        =="
echo "==  ==    ==  ====      ==    ======   ==  ===  ========  =="
echo "==  ========  ==  ==    ==   ===  ===  ==   ==  == == ==  =="
echo "==  ========  ==  ==    ==  ====  ==== ==   ==  ===== ==  =="
echo "============================================================"

echo "begin>>>>>>>>>>>>>>>>>>>>"
#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")

#输出当前服务器时间
echo "datetime: ${dqtime}"
echo "<<<<<<<<<<<<<<<<<<<<<<end"

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt upgrade

sudo apt install -y curl git openssh-server net-tools 
echo y|sudo apt install -y neovim

git clone git@github.com:rupa/z.git

echo '. ~/z/z.sh' >> ~/.bashrc
echo 'alias vim='nvim''>> ~/.bashrc
echo 'alias vi='nvim''>> ~/.bashrc
echo 'alias v='nvim''>> ~/.bashrc

mkdir ~/.config/nvim
cp -r ukyang-vimrelated-Windows/Neovide/* ~/.config/nvim/

source ~/.bashrc
