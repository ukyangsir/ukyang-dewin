# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-05-22
# Description:
# push 命令
# backup 命令
# NOTE: 必备脚本4：自定义 push 与 backup 脚本，sudo make install 即可


install:
	touch /usr/bin/push
	cp -f push.sh /usr/bin/push
	chmod +x /usr/bin/push
	touch /usr/bin/backup
	cp -f backup.sh /usr/bin/backup
	chmod +x /usr/bin/backup
	@echo "Install successful."

uninstall:
	rm /usr/bin/push
	rm /usr/bin/backup
	@echo "Uninstall successful."
