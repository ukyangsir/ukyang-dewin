
createAt=$(date "+%Y-%m-%d %H:%M:%S")
read -p "输入 commit 信息： " message
echo "git commit -m '"${createAt}: ${message}"'"
