#!/bin/bash
#
#**************************************************
# Author:         ukyang                          *
# E-mail:         ukyang_ma@163.com               *
# Date:           2022-05-19        
# Description:                                    *
# Copyright 2022 by ukyang.All Rights Reserved    *
#**************************************************
echo "*******************************BeginDate********************************"
echo "Init Ubuntu1804"
echo "Mission1: Change sources.list && Add ppa"
echo "Mission2: Install Something Necessary"
echo "Mission3: Generate SSH-key"
#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")
#输出当前服务器时间
echo "BeginDate: ${dqtime}"
echo "************************************************************************"


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


echo "***************************Generate SSH-key*****************************"
ssh-keygen -t rsa -C 'ukyang_ma@163.com'
echo "*************************End Generate SSH-key***************************"
