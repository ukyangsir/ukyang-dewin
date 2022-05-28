#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-24
# Description:
# NOTE: 必备脚本1： Ubuntu22.04 初始化 + 代码格式化插件安装脚本


echo -e "\033[33m ___  ___  ___  __        ___    ___ ________  ________   ________      \033[0m"
echo -e "\033[33m|\  \|\  \|\  \|\  \     |\  \  /  /|\   __  \|\   ___  \|\   ____\     \033[0m"
echo -e "\033[33m\ \  \\\  \ \  \/  /|_   \ \  \/  / | \  \|\  \ \  \\ \  \ \  \___|     \033[0m"
echo -e "\033[33m \ \  \\\  \ \   ___  \   \ \    / / \ \   __  \ \  \\ \  \ \  \  ___   \033[0m"
echo -e "\033[33m  \ \  \\\  \ \  \\ \  \   \/  /  /   \ \  \ \  \ \  \\ \  \ \  \|\  \  \033[0m"
echo -e "\033[33m   \ \_______\ \__\\ \__\__/  / /      \ \__\ \__\ \__\\ \__\ \_______\ \033[0m"
echo -e "\033[33m    \|_______|\|__| \|__|\___/ /        \|__|\|__|\|__| \|__|\|_______| \033[0m"
echo -e "\033[33m                        \|___|/                                         \033[0m"


echo -e "\e[36mWelcome to ukyang's Ubuntu-22.04!!!\e[0m"
cd ~

echo ""
echo ""

echo -e "\e[36m=============================Start To Init==============================\e[0m"
echo "Init Ubuntu-22.04......"
echo ""
echo "Mission0: Add /etc/wsl.conf, Reboot, Add ssh-keys, Clone the repo to your home path"
echo "Mission1: Change sources.list(tsinghua)"
echo "Mission2: Add ppa(Neovim)"
echo "Mission3: Install something necessary"
echo "Mission4: Install z.sh"
echo "Mission5: Install Neovim"
echo "Mission6: Prepares(lsp,treesitter,cmp,format)"
echo "Mission7: Install shells_to_bin(push,backup)"
begindate=$(date "+%Y-%m-%d %H:%M:%S")
echo "BeginDate: ${begindate}"

echo ""
echo ""

echo -e "\e[36m================Mission1: Change sources.list(tsinghua)=================\e[0m"
echo "ukyang"|sudo -S chmod 777 -R ~/ukyang-vimrelated-Windows
echo ""
sudo rm -rf /etc/apt/sources.list
sudo cp ~/ukyang-vimrelated-Windows/Ubuntu-22.04/sources.list /etc/apt/
sudo chmod 777 /etc/apt/sources.list 

echo ""
echo ""

echo -e "\e[36m=======================Mission2: Add ppa(Neovim)========================\e[0m"
echo | sudo -S add-apt-repository ppa:neovim-ppa/unstable
echo "y" | sudo -S apt update
# sudo apt list --upgradable
echo "y" | sudo -S apt upgrade

echo ""
echo ""

echo -e "\e[36m=================Mission3: Install something necessary==================\e[0m"
# net related(completed)
# pack and unpack related(completed)
# build related(completed)
# plug(telescope) related(completed)
# enable systemctl related(completed)
sudo apt install -y curl wget git openssh-server net-tools \
     tar zip unzip \
     build-essential gcc zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev liblzma-dev sqlite3 libsqlite3-dev tk-dev uuid-dev libgdbm-compat-dev\
     fd-find ripgrep \
     fontconfig daemonize \
# sudo daemonize /usr/bin/unshare --fork --pid --mount-proc /lib/systemd/systemd --system-unit=basic.target
# exec sudo nsenter -t $(pidof systemd) -m -p su - $LOGNAME
# sudo systemctl restart snapd.service

# nodejs && npm
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

echo ""
echo ""

echo -e "\e[36m========================Mission4: Install z.sh==========================\e[0m"
git clone git@github.com:rupa/z.git ~/z
echo '. ~/z/z.sh' >> ~/.bashrc

echo ""
echo ""

echo -e "\e[36m=======================Mission5: Install Neovim=========================\e[0m"
sudo apt install -y neovim
sudo mkdir -p ~/.config/nvim
sudo cp -r ~/ukyang-vimrelated-Windows/Neovide/* ~/.config/nvim/
sudo chmod -R 777 ~/.config/nvim
echo "alias vim='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim'">> ~/.bashrc
echo "alias vi='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim'">> ~/.bashrc
echo "alias v='nvim -u ~/ukyang-vimrelated-Windows/Neovide/init.vim'">> ~/.bashrc
source ~/.bashrc

echo ""
echo ""

echo -e "\e[36m=========Mission6: Prepares(lsp,treesitter,cmp,format)==========\e[0m"
# lsp log file
sudo mkdir -p ~/.cache/nvim
sudo touch ~/.cache/nvim/lsp-installer.log
sudo chmod 777 -R ~/.cache

# format
# vue/lua
sudo npm install -g prettier lua-fmt
# python
sudo apt install -y python3-autopep8

echo ""
echo ""

echo -e "\e[36m===================Mission7: Install shells_to_bin======================\e[0m"
cd ~/ukyang-vimrelated-Windows/shells_to_bin
sudo make install
cd ~

echo ""
echo ""

echo -e "\e[36m========================================================================\e[0m"
echo "Mission1 complete"
echo "Mission2 complete"
echo "Mission3 complete"
echo "Mission4 complete"
echo "Mission5 complete"
echo "Mission6 complete"
echo "Mission7 complete"
enddate=$(date "+%Y-%m-%d %H:%M:%S")
echo "EndDate: ${enddate}"
echo -e "\e[36m===========================Init successfully============================\e[0m"
