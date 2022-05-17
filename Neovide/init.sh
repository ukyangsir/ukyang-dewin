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

sudo apt install -y curl git openssh-server net-tools neovim zsh zsh-autosuggestions

mkdir ~/.config/nvim
cp -r ukyang-vimrelated-Windows/Neovide/* ~/.config/nvim/


git clone git@github.com:rupa/z.git ~/z
git clone git@github.com:ohmyzsh/ohmyzsh.git ~/ohmyzsh 


sh ~/ohmyzsh/tools/install.sh
rm -rf ~/ohmyzsh
rm -rf ~/.zshrc
touch ~/.zshrc
git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions 

echo '. ~/z/z.sh' >> ~/.bashrc
echo 'alias vim='nvim''>> ~/.bashrc
echo 'alias vi='nvim''>> ~/.bashrc
echo 'alias v='nvim''>> ~/.bashrc

echo 'export ZSH="$HOME/.oh-my-zsh"' >> ~/.zshrc
echo 'ZSH_THEME="random"' >> ~/.zshrc
echo 'plugins=(git zsh-autosuggestions)' >> ~/.zshrc
echo 'source $ZSH/oh-my-zsh.sh' >> ~/.zshrc
echo 'source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
echo '. ~/z/z.sh' >> ~/.zshrc
echo 'alias vim='nvim''>> ~/.zshrc
echo 'alias vi='nvim''>> ~/.zshrc
echo 'alias v='nvim''>> ~/.zshrc

source ~/.bashrc
source ~/.zshrc

sudo chsh -s /bin/zsh
