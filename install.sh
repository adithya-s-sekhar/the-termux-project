#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

echo '---------------------'
echo 'Beginning The Termux Project installation'
echo ''
echo 'https://www.github.com/adithya-s-sekhar/the-termux-project'
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
dos2unix termux-url-opener >/dev/null 2>&1

echo '- copying scripts'

# Copy custom scripts to /usr/bin
cp banner /data/data/com.termux/files/usr/bin >/dev/null 2>&1
cp index /data/data/com.termux/files/usr/bin >/dev/null 2>&1
cp wastatus /data/data/com.termux/files/usr/bin >/dev/null 2>&1
cp wastatus-banner /data/data/com.termux/files/usr/bin >/dev/null 2>&1
cp wastatus-video /data/data/com.termux/files/usr/bin >/dev/null 2>&1
cp wastatus-audio /data/data/com.termux/files/usr/bin >/dev/null 2>&1
cp aria2manager /data/data/com.termux/files/usr/bin >/dev/null 2>&1
cp yt /data/data/com.termux/files/usr/bin >/dev/null 2>&1
mkdir ~/bin >/dev/null 2>&1
cp termux-url-opener /data/data/com.termux/files/home/bin >/dev/null 2>&1

# Set permission
echo '- setting permissions'
chmod +x /data/data/com.termux/files/usr/bin/banner >/dev/null 2>&1
chmod +x /data/data/com.termux/files/usr/bin/index >/dev/null 2>&1
chmod +x /data/data/com.termux/files/usr/bin/wastatus >/dev/null 2>&1
chmod +x /data/data/com.termux/files/usr/bin/wastatus-banner >/dev/null 2>&1
chmod +x /data/data/com.termux/files/usr/bin/wastatus-video >/dev/null 2>&1
chmod +x /data/data/com.termux/files/usr/bin/wastatus-audio >/dev/null 2>&1
chmod +x /data/data/com.termux/files/usr/bin/aria2manager >/dev/null 2>&1
chmod +x /data/data/com.termux/files/usr/bin/yt >/dev/null 2>&1
chmod +x /data/data/com.termux/files/home/bin/termux-url-opener >/dev/null 2>&1

echo ''

echo '3/3 .bashrc'

# Backup bash.bashrc and replace newbash
echo '- backing up current bashrc'
# Copy newbash.bashrc
cp newbash.bashrc /data/data/com.termux/files/usr/etc >/dev/null 2>&1
echo '- installing custom bashrc'
cd /data/data/com.termux/files/usr/etc >/dev/null 2>&1
mv bash.bashrc bash.bashrc.bak >/dev/null 2>&1
mv newbash.bashrc bash.bashrc >/dev/null 2>&1

echo ''
echo 'Scripts are installed, restart termux now.'

cd /sdcard
