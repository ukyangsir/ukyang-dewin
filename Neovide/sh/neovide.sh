#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-22
# Description:
# FIX: 暂不可用脚本1：Neovide 安装脚本，但目前 Ubuntu1804 编译后有 bug，无法运行

# Neovide 所需软件和环境
sudo apt install -y gnupg ca-certificates \
    gcc-multilib g++-multilib cmake libssl-dev pkg-config \
    libfreetype6-dev libasound2-dev libexpat1-dev libxcb-composite0-dev \
    libbz2-dev libsndio-dev freeglut3-dev libxmu-dev libxi-dev libfontconfig1-dev \
    
# Rust 环境
curl --proto '=https' --tlsv1.2 -sSf "https://sh.rustup.rs" | sh

cp ~/ukyang-vimrelated-Windows/Neovide/sh/config ~/.cargo/
rm -rf ~/.cargo/registry/index
# Neovide
git clone git@github.com:neovide/neovide.git ~/neovide

# 编译生成 Neovide 的可执行文件
cd ~/neovide && ~/.cargo/bin/cargo build --release
