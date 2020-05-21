#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

# Delete newbash and restore old bash
echo 'Restoring old bashrc'
cd /data/data/com.termux/files/usr/etc
rm bash.bashrc
mv bash.bashrc.bak bash.bashrc

echo ''

# Uninstall ffmpeg, aria2
echo 'Removing dependencies'
apt remove ffmpeg aria2 python atomicparsley -y >/dev/null 2>&1
apt autoremove -y >/dev/null 2>&1

echo ''

# Remove scripts
echo 'Removing scripts'
rm /data/data/com.termux/files/usr/bin/banner
rm /data/data/com.termux/files/usr/bin/index
rm /data/data/com.termux/files/usr/bin/wastatus
rm /data/data/com.termux/files/usr/bin/wastatus-banner
rm /data/data/com.termux/files/usr/bin/wastatus-video
rm /data/data/com.termux/files/usr/bin/wastatus-audio
rm /data/data/com.termux/files/usr/bin/aria2manager
rm /data/data/com.termux/files/usr/bin/yt

echo ''

echo 'All modifications are uninstalled. Restart termux now'
