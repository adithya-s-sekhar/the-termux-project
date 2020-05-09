#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

# Delete newbash and restore old bash
cd /data/data/com.termux/files/usr/etc
rm bash.bashrc
mv bash.bashrc.bak bash.bashrc

# Uninstall ffmpeg, aria2
apt remove ffmpeg aria2 -y
apt autoremove -y

# Remove scripts
rm /data/data/com.termux/files/usr/bin/banner
rm /data/data/com.termux/files/usr/bin/index
rm /data/data/com.termux/files/usr/bin/wastatus
rm /data/data/com.termux/files/usr/bin/wastatus-banner
rm /data/data/com.termux/files/usr/bin/wastatus-video
rm /data/data/com.termux/files/usr/bin/wastatus-audio
rm /data/data/com.termux/files/usr/bin/aria2manager

clear

echo 'All modifications are uninstalled. Restart termux now'
