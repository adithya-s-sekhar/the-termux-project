#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar
# Remote install script

mkdir my-first-repo >/dev/null 2>&1
cd my-first-repo
echo 'Getting files'
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/aria2manager' -o aria2manager >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/banner' -o banner >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/index' -o index >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/install.sh' -o install.sh >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/newbash.bashrc' -o newbash.bashrc >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/uninstall.sh' -o uninstall.sh >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus' -o wastatus >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus-audio' -o wastatus-audio >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus-video' -o wastatus-video >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus-banner' -o wastatus-banner >/dev/null 2>&1
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/yt' -o yt >/dev/null 2>&1
echo ''
echo 'Starting install.sh'
echo ''
sh install.sh
