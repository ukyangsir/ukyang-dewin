#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-22
# Description:
# git add . + git commit -m '' + git push



echo " ___  ___  ___  __        ___    ___ ________  ________   ________      "
echo "|\  \|\  \|\  \|\  \     |\  \  /  /|\   __  \|\   ___  \|\   ____\     "
echo "\ \  \\\  \ \  \/  /|_   \ \  \/  / | \  \|\  \ \  \\ \  \ \  \___|     "
echo " \ \  \\\  \ \   ___  \   \ \    / / \ \   __  \ \  \\ \  \ \  \  ___   "
echo "  \ \  \\\  \ \  \\ \  \   \/  /  /   \ \  \ \  \ \  \\ \  \ \  \|\  \  "
echo "   \ \_______\ \__\\ \__\__/  / /      \ \__\ \__\ \__\\ \__\ \_______\ "
echo "    \|_______|\|__| \|__|\___/ /        \|__|\|__|\|__| \|__|\|_______| "
echo "                        \|___|/                                         "

cd ~/ukyang-vimrelated-Windows
echo ""
echo ""
echo -e "\e[36m *******************************本地库状态*******************************\e[0m"
echo ""
git status
echo ""
echo ""
while :
do
	read -n 1 -p "是否继续提交? [Y/N] " input
	case $input in
		[yY][eE][sS]|[yY])
      echo ""
      echo -e "\e[36m ********************************继续提交********************************\e[0m"
			createAt=$(date "+%Y-%m-%d %H:%M:%S")
			# git pull GiteeTypora master
      echo -e "\e[36m git add ......\e[0m"
			git add .
      read -p "输入 commit 信息： " message
      echo ""
      echo -e "\e[36m git commit -m '"${createAt}: ${message}"' ......\e[0m"
      echo ""
			git commit -m "'${createAt}: ${message}'"
      echo -e "\e[36m git push ......\e[0m"
      git push
      echo -e "\e[36m ********************************提交成功********************************\e[0m"
      exit 0
			;;
		[nN][oO]|[nN])
      echo ""
      echo -e "\e[36m ********************************中断提交********************************\e[0m"
			sleep 1
			exit 1
			;;
		*)
    echo ""
    echo -e "\e[36m **************************输入错误，请重新输入**************************\e[0m"
		continue
		;;
	esac
done
