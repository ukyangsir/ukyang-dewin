#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-06-03
# Description:

cd /usr/local
echo "ukyang" | sudo -S wget https://github.com/jesseduffield/lazygit/releases/download/v0.34/lazygit_0.34_Linux_x86_64.tar.gz 
sudo tar -xf lazygit_0.34_Linux_x86_64.tar.gz
sudo rm -rf lazygit_0.34_Linux_x86_64.tar.gz

sudo mkdir ~/.config/lazygit
sudo cp ~/ukyang-vimrelated-Windows/Ubuntu-22.04/lazygit/config.yml ~/.config/lazygit/

sudo chmod -R 777 ~/.config
