#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar

echo '---------------------'
echo 'Uninstalling The Termux Project'
echo ''
echo 'https://www.github.com/adithya-s-sekhar/the-termux-project'
echo '---------------------'
echo ''

# Uninstall ffmpeg, aria2, python and atomicparsley
echo '1/3 Uninstalling dependencies'
echo '- ffmpeg'
apt remove ffmpeg -y >/dev/null 2>&1
echo '- aria2'
apt remove aria2 -y >/dev/null 2>&1
echo '- python'
apt remove python -y >/dev/null 2>&1
echo '- atomicparsley'
apt remove atomicparsley -y >/dev/null 2>&1
echo '- youtube-dl'
# Uninstalling python would already remove youtube-dl, I'm putting this here just for uniformity in the UI.
echo '- cleaning up'
apt autoremove -y >/dev/null 2>&1

echo ''

# Remove scripts
echo '2/3 Uninstalling scripts'
rm /data/data/com.termux/files/usr/bin/banner >/dev/null 2>&1
rm /data/data/com.termux/files/usr/bin/index >/dev/null 2>&1
rm /data/data/com.termux/files/usr/bin/wastatus >/dev/null 2>&1
rm /data/data/com.termux/files/usr/bin/wastatus-banner >/dev/null 2>&1
rm /data/data/com.termux/files/usr/bin/wastatus-video >/dev/null 2>&1
rm /data/data/com.termux/files/usr/bin/wastatus-audio >/dev/null 2>&1
rm /data/data/com.termux/files/usr/bin/aria2manager >/dev/null 2>&1
rm /data/data/com.termux/files/usr/bin/yt >/dev/null 2>&1

echo ''

# Delete newbash and restore old bash
echo '3/3 .bashrc'
echo '- removing custom bashrc'
cd /data/data/com.termux/files/usr/etc >/dev/null 2>&1
rm bash.bashrc >/dev/null 2>&1
echo '- restoring old bashrc'
mv bash.bashrc.bak bash.bashrc >/dev/null 2>&1

echo ''

echo 'Scripts are uninstalled. Restart termux now'
