#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

# Delete newbash and restore old bash
rm bash.bashrc
mv bash.bashrc.bak bash.bashrc

# Uninstall youtube-dl
pip uninstall -y youtube-dl

# Uninstall ffmpeg, aria2 and python
apt remove ffmpeg aria2 python -y

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
