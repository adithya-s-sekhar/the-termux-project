#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar
# Remote install script

mkdir my-first-repo
cd my-first-repo
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/aria2manager' -o aria2manager
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/banner' -o banner
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/index' -o index
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/install.sh' -o install.sh
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/newbash.bashrc' -o newbash.bashrc
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/uninstall.sh' -o uninstall.sh
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus' -o wastatus
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus-audio' -o wastatus-audio
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus-video' -o wastatus-video
curl 'https://raw.githubusercontent.com/adithya-s-sekhar/my-first-repo/master/wastatus-banner' -o wastatus-banner
sh install.sh
