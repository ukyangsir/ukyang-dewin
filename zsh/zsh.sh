#!/bin/bash
#
#**************************************************
# Author:         ukyang                          *
# E-mail:         ukyang_ma@163.com               *
# Date:           2022-05-16        
# Description:                                    *
# Copyright 2022 by ukyang.All Rights Reserved    *
#**************************************************
echo "************************Install zsh && ohmyzsh**************************"
sudo apt install -y zsh
git clone git@github.com:ohmyzsh/ohmyzsh.git ~/ohmyzsh 
# 脚本安装 ohmyzsh 终端主题
sh ~/ohmyzsh/tools/install.sh
sudo rm -rf ~/ohmyzsh
sudo rm -rf ~/.zshrc
sudo cp ~/ukyang-vimrelated-Windows/Neovide/sh/.zshrc ~
# 安装 ohmyzsh 插件 zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions 

source ~/.zshrc
sudo chsh -s /bin/zsh
echo "**********************End Install zsh && ohmyzsh************************"
