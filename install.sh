#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

echo '---------------------'
echo 'Beginning The Termux Project installation'
echo ''
echo 'https://www.github.com/adithya-s-sekhar/my-first-repo'
echo '---------------------'
echo ''
# Install ffmpeg, aria2, python, atomicparsley and youtube-dl
echo '1/3 Installing dependencies'
echo '- ffmpeg'
pkg install ffmpeg -y >/dev/null 2>&1
echo '- aria2'
pkg install aria2 -y >/dev/null 2>&1
echo '- python'
pkg install python -y >/dev/null 2>&1
echo '- atomicparsley'
pkg install atomicparsley -y >/dev/null 2>&1
echo '- youtube-dl'
pip install youtube-dl >/dev/null 2>&1

echo ''

echo '2/3 Installing scripts'
echo '- converting to unix'
# dos2unix conversion for scripts
dos2unix banner >/dev/null 2>&1
dos2unix index >/dev/null 2>&1
dos2unix wastatus >/dev/null 2>&1
dos2unix wastatus-banner >/dev/null 2>&1
dos2unix wastatus-video >/dev/null 2>&1
dos2unix wastatus-audio >/dev/null 2>&1
dos2unix aria2manager >/dev/null 2>&1
dos2unix yt >/dev/null 2>&1

echo '- copying scripts'

# Copy custom scripts to /usr/bin
cp banner /data/data/com.termux/files/usr/bin
cp index /data/data/com.termux/files/usr/bin
cp wastatus /data/data/com.termux/files/usr/bin
cp wastatus-banner /data/data/com.termux/files/usr/bin
cp wastatus-video /data/data/com.termux/files/usr/bin
cp wastatus-audio /data/data/com.termux/files/usr/bin
cp aria2manager /data/data/com.termux/files/usr/bin
cp yt /data/data/com.termux/files/usr/bin

# Set permission
echo '- setting permissions'
chmod +x /data/data/com.termux/files/usr/bin/banner
chmod +x /data/data/com.termux/files/usr/bin/index
chmod +x /data/data/com.termux/files/usr/bin/wastatus
chmod +x /data/data/com.termux/files/usr/bin/wastatus-banner
chmod +x /data/data/com.termux/files/usr/bin/wastatus-video
chmod +x /data/data/com.termux/files/usr/bin/wastatus-audio
chmod +x /data/data/com.termux/files/usr/bin/aria2manager
chmod +x /data/data/com.termux/files/usr/bin/yt

echo ''

echo '3/3 .bashrc'

# Backup bash.bashrc and replace newbash
echo '- backing up current bashrc'
# Copy newbash.bashrc
cp newbash.bashrc /data/data/com.termux/files/usr/etc
echo '- installing custom bashrc'
cd /data/data/com.termux/files/usr/etc
mv bash.bashrc bash.bashrc.bak
mv newbash.bashrc bash.bashrc

echo ''
echo 'Scripts are installed, restart termux now.'

cd /sdcard
