#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

# Update repos and upgrade packages
apt update

# Copy newbash.bashrc
cp newbash.bashrc /data/data/com.termux/files/usr/etc

# Install ffmpeg, aria2 and python
apt install ffmpeg aria2 python -y

# Upgrade pip and install youtube-dl
pip install --upgrade pip
pip install youtube-dl

# dos2unix conversion for scripts
dos2unix banner
dos2unix index
dos2unix wastatus
dos2unix wastatus-banner
dos2unix wastatus-video
dos2unix wastatus-audio
dos2unix aria2manager

# Copy custom scripts to /usr/bin
cp banner /data/data/com.termux/files/usr/bin
cp index /data/data/com.termux/files/usr/bin
cp wastatus /data/data/com.termux/files/usr/bin
cp wastatus-banner /data/data/com.termux/files/usr/bin
cp wastatus-video /data/data/com.termux/files/usr/bin
cp wastatus-audio /data/data/com.termux/files/usr/bin
cp aria2manager /data/data/com.termux/files/usr/bin

# Set permission
chmod +x /data/data/com.termux/files/usr/bin/banner
chmod +x /data/data/com.termux/files/usr/bin/index
chmod +x /data/data/com.termux/files/usr/bin/wastatus
chmod +x /data/data/com.termux/files/usr/bin/wastatus-banner
chmod +x /data/data/com.termux/files/usr/bin/wastatus-video
chmod +x /data/data/com.termux/files/usr/bin/wastatus-audio
chmod +x /data/data/com.termux/files/usr/bin/aria2manager

# Backup bash.bashrc and replace newbash
cd /data/data/com.termux/files/usr/etc
mv bash.bashrc bash.bashrc.bak
mv newbash.bashrc bash.bashrc

clear

echo 'Scripts are installed. Restart termux now'
