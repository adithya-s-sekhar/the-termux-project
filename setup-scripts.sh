#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar
# Initial Date: 09/May/2020
# Current Date: 09/May/2020

cd scripts

# dos2unix conversion for scripts
dos2unix header
dos2unix index
dos2unix wastatus
dos2unix wastatus-header
dos2unix wastatus-video
dos2unix wastatus-audio
dos2unix download
dos2unix dl-header

# Copy custom scripts to /usr/bin
cp header /data/data/com.termux/files/usr/bin
cp index /data/data/com.termux/files/usr/bin
cp wastatus /data/data/com.termux/files/usr/bin
cp wastatus-header /data/data/com.termux/files/usr/bin
cp wastatus-video /data/data/com.termux/files/usr/bin
cp wastatus-audio /data/data/com.termux/files/usr/bin
cp download /data/data/com.termux/files/usr/bin
cp dl-header /data/data/com.termux/files/usr/bin

# Set permission
cd /data/data/com.termux/files/usr/bin
chmod +x header
chmod +x index
chmod +x wastatus
chmod +x wastatus-header
chmod +x wastatus-video
chmod +x wastatus-audio
chmod +x download
chmod +x dl-header

cd ..
