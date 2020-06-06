#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar
# Remote install script

mkdir the-termux-project >/dev/null 2>&1
cd the-termux-project
echo 'Getting files'
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/the-termux-project/master/files_list.txt' -o files_list.txt >/dev/null 2>&1
xargs -n 1 curl -O < files_list.txt >/dev/null 2>&1
echo ''
echo 'Starting install.sh'
echo ''
sh install.sh
