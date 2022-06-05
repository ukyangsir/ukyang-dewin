#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-30
# Description:
# Neovim 配置文件同步脚本


echo -e "\e[36m正在同步......\e[0m"
echo "ukyang"|sudo -S cp -R ~/ukyang-vimrelated-Windows/Neovim/lua/* ~/.config/nvim/lua/
echo ""
sudo cp -R ~/ukyang-vimrelated-Windows/Neovim/ftplugin/* ~/.config/nvim/ftplugin/
sudo cp -R ~/ukyang-vimrelated-Windows/Neovim/lint/* ~/.config/nvim/lint/
sudo cp -R ~/ukyang-vimrelated-Windows/Neovim/sh/* ~/.config/nvim/sh/
sudo cp -R ~/ukyang-vimrelated-Windows/Neovim/snippet/* ~/.config/nvim/snippet/
sudo cp -R ~/ukyang-vimrelated-Windows/Neovim/vim_raw/* ~/.config/nvim/vim_raw/
sudo cp -R ~/ukyang-vimrelated-Windows/Neovim/init.vim ~/.config/nvim/
echo -e "\e[36m同步成功\e[0m"
