#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar
# Remote install script

mkdir the-termux-project >/dev/null 2>&1
cd the-termux-project
rm -r *
echo 'Getting files'
curl 'https://codeload.github.com/adithya-s-sekhar/the-termux-project/legacy.tar.gz/master ' --output ttp.gz >/dev/null 2>&1
tar -xf ttp.gz --overwrite --split-components 1
echo ''
echo 'Starting install.sh'
echo ''
sh install.sh
