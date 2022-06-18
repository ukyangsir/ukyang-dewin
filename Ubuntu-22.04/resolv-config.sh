#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-06-19
# Description:

echo "ukyang" | sudo -S chmod 777 /etc/resolv.conf
sudo echo "nameserver 8.8.8.8" >>/etc/resolv.conf
sudo echo "nameserver 8.8.4.4" >>/etc/resolv.conf
