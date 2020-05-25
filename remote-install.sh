#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar
# Remote install script

mkdir my-first-repo >/dev/null 2>&1
cd my-first-repo
echo 'Getting files'
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/testing/files_list.txt' -o files_list.txt >/dev/null 2>&1
xargs -n 1 curl -O < files_list.txt
echo ''
echo 'Starting install.sh'
echo ''
sh install.sh
