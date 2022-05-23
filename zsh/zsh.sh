#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-22
# Description:
# NOTE: 必备脚本2： zsh 与 ohmyzsh 的安装脚本

echo "************************Install zsh && ohmyzsh**************************"
echo "ukyang"|sudo -S apt install -y zsh
echo ""
git clone git@github.com:ohmyzsh/ohmyzsh.git ~/ohmyzsh 
# 脚本安装 ohmyzsh 终端主题
sh ~/ohmyzsh/tools/install.sh
sudo rm -rf ~/ohmyzsh
sudo rm -rf ~/.zshrc
sudo cp ~/ukyang-vimrelated-Windows/Neovide/sh/.zshrc ~
sudo chmod 777 ~/.zshrc
# 安装 ohmyzsh 插件 zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions 

source ~/.zshrc
sudo chsh -s /bin/zsh
echo "**********************End Install zsh && ohmyzsh************************"
