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

argsError() {
  cat <<EOF
Wrong use of the push shell!

Right use: push [repoPath]
EOF
  exit 1
}

if [ $# == 0 ]; then 
  cd ~/ukyang-vimrelated-Windows
  echo ""
  echo -e "\e[36mRepo to push：/home/ukyang/ukyang-vimrelated-Windows\e[0m"
elif [ $# == 1 ]; then
  cd $1
  echo ""
  echo -e "\e[36mRepo to push：$1\e[0m"
else
  argsError
fi

echo ""
echo ""
echo -e "\e[36m*******************************Local Status*******************************\e[0m"
echo ""
git status
while :
do
  echo ""
  echo ""
	read -n 1 -p "Do you want to continue? [Y/N] " input
	case $input in
		[yY][eE][sS]|[yY]|"")
      echo ""
      echo -e "\e[36m********************************Continue********************************\e[0m"
			now=$(date "+%Y-%m-%d %H:%M:%S")
			# git pull GiteeTypora master
      echo ""
      echo -e "\e[36mgit add ......\e[0m"
			git add .
      echo ""
      echo "commit type："
      echo "1. add"
      echo "2. update"
      echo "3. fix"
      echo "4. style"
      echo "5. refactor"
      echo "6. perf"
      echo "7. docs"
      echo "8. revert"
      while :
      do
        read -n 1 -p "choose commit type [1-8]： " num
        echo ""
        case $num in
           1)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"add: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           2)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"update: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           3)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"fix: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           4)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"style: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           5)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"refactor: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           6)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"perf: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           7)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"docs: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           8)
             read -p "input commit subject： " subject
             echo ""
             echo -e "\e[36mgit commit -m '"revert: ${subject} ${now}"' ......\e[0m"
             break
             ;;
           *)
             echo -e "\e[36m**************************输入错误，请重新输入**************************\e[0m"
             echo ""
		         continue
             ;;
        esac
      done
			git commit -m "'${createat}: ${message}'"
      echo ""
      echo -e "\e[36mgit push ......\e[0m"
      git push
      echo ""
      echo -e "\e[36m********************************提交成功********************************\e[0m"
      exit 0
			;;
		[nn][oo]|[nn])
      echo ""
      echo -e "\e[36m================================中断提交================================\e[0m"
			sleep 1
			exit 1
		  ;;
		*)
      echo ""
      echo -e "\e[36m==========================输入错误，请重新输入==========================\e[0m"
      echo ""
		  continue
		  ;;
	esac
done
