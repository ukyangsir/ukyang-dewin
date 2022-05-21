#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-21
# Description:
# 将本地 Ubuntu 中 Neovim 更新的配置直接推送到 GitHub 的脚本


sudo rm -rf ~/ukyang-vimrelated-Windows/Neovide/*
sudo rm -rf ~/ukyang-vimrelated-Windows/zsh/zsh.sh
sudo cp -r ~/.config/nvim/* ~/ukyang-vimrelated-Windows/Neovide/
sudo cp ~/init.vim ~/ukyang-vimrelated-Windows/Neovide/
sudo cp ~/.zshrc ~/ukyang-vimrelated-Windows/zsh/
sudo rm -rf /mnt/f/git_space/ukyang-vimrelated-Windows/Neovide/plugged
