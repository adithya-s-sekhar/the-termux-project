#!/data/data/com.termux/files/usr/bin/bash
# Author: Adithya S Sekhar
# Initial Date: 09/May/2020
# Current Date: 09/May/2020

# Update repos and upgrade packages
apt update
apt upgrade -y

# Install wget, ffmpeg, aria2 and python
apt install wget -y
apt install ffmpeg -y
apt install python -y
apt install aria2 -y

# Upgrade pip and install youtube-dl
pip install --upgrade pip
pip install youtube-dl
