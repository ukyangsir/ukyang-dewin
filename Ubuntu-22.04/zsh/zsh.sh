#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-22
# Description:
# NOTE: 必备脚本2： zsh/ohmyzsh 以及 代码格式化程序 的安装脚本
# 记得测试 z 命令，npm -v 命令，以及 snap list 命令

echo -e "\e[36m========================Install zsh && ohmyzsh==========================\e[0m"
echo "ukyang"|sudo -S apt install -y zsh
echo ""
git clone git@github.com:ohmyzsh/ohmyzsh.git ~/ohmyzsh 
# 脚本安装 ohmyzsh 终端主题
sudo rm -rf ~/ohmyzsh/tools/install.sh
sudo cp ~/ukyang-vimrelated-Windows/Ubuntu-22.04/zsh/install.sh ~/ohmyzsh/tools/
sh ~/ohmyzsh/tools/install.sh
sudo rm -rf ~/ohmyzsh
sudo rm -rf ~/.zshrc
sudo cp ~/ukyang-vimrelated-Windows/Ubuntu-22.04/zsh/.zshrc ~/
sudo chmod 777 ~/.zshrc
# 安装 ohmyzsh 插件 zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions 

source ~/.zshrc
sudo chsh -s /bin/zsh

echo -e "\e[36m======================End Install zsh && ohmyzsh========================\e[0m"
