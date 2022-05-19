#!/bin/bash
#
#**************************************************
# Author:         ukyang                          *
# E-mail:         ukyang_ma@163.com               *
# Date:           2022-05-19        
# Description:                                    *
# Copyright 2022 by ukyang.All Rights Reserved    *
#**************************************************
echo "*********************Change sources.list && Add ppa*********************"
rm -rf /etc/apt/sources.list
cp ~/ukyang-vimrelated-Windows/Neovide/sh/sources.list /etc/apt/

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt upgrade
echo "*******************End Change sources.list && Add ppa*******************"


echo "**********************Install Something Necessary***********************"
sudo apt install -y curl git openssh-server net-tools
echo "********************End Install Something Necessary*********************"
