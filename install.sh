#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

# Copy newbash.bashrc
cp newbash.bashrc /data/data/com.termux/files/usr/etc

# Install ffmpeg, aria2, python, atomicparsley and youtube-dl
echo 'Installing dependencies'
pkg install ffmpeg aria2 python atomicparsley -y >/dev/null 2>&1
pip install youtube-dl >/dev/null 2>&1

# dos2unix conversion for scripts
dos2unix banner >/dev/null 2>&1
dos2unix index >/dev/null 2>&1
dos2unix wastatus >/dev/null 2>&1
dos2unix wastatus-banner >/dev/null 2>&1
dos2unix wastatus-video >/dev/null 2>&1
dos2unix wastatus-audio >/dev/null 2>&1
dos2unix aria2manager >/dev/null 2>&1
dos2unix yt >/dev/null 2>&1

echo ''

# Copy custom scripts to /usr/bin
echo 'Installing scripts'
cp banner /data/data/com.termux/files/usr/bin
cp index /data/data/com.termux/files/usr/bin
cp wastatus /data/data/com.termux/files/usr/bin
cp wastatus-banner /data/data/com.termux/files/usr/bin
cp wastatus-video /data/data/com.termux/files/usr/bin
cp wastatus-audio /data/data/com.termux/files/usr/bin
cp aria2manager /data/data/com.termux/files/usr/bin
cp yt /data/data/com.termux/files/usr/bin

echo ''

# Set permission
echo 'Setting permissions'
chmod +x /data/data/com.termux/files/usr/bin/banner
chmod +x /data/data/com.termux/files/usr/bin/index
chmod +x /data/data/com.termux/files/usr/bin/wastatus
chmod +x /data/data/com.termux/files/usr/bin/wastatus-banner
chmod +x /data/data/com.termux/files/usr/bin/wastatus-video
chmod +x /data/data/com.termux/files/usr/bin/wastatus-audio
chmod +x /data/data/com.termux/files/usr/bin/aria2manager
chmod +x /data/data/com.termux/files/usr/bin/yt

echo ''

# Backup bash.bashrc and replace newbash
echo 'Backing up current bashrc'
echo ''
echo 'Installing custom bashrc'
cd /data/data/com.termux/files/usr/etc
mv bash.bashrc bash.bashrc.bak
mv newbash.bashrc bash.bashrc

echo ''

echo 'Scripts are installed. Restart termux now'
