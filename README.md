# My first repo, using this to learn git.

>This isn't meant to be used by anyone, these are some hacky scripts for termux. I've put these here so I have something to test git commands on.

Feel free to judge and criticize, I'm learning after all.

This is the setup script for configuring termux and installing some scripts I made for my specific usage.

Inside there's a WhatsApp status video maker and a never failing download manager for aria2c in a loop.

## Installation

1. Install termux from [Play Store](https://play.google.com/store/apps/details?id=com.termux) or [F-Droid](https://f-droid.org/en/packages/com.termux/)
2. Grant storage permission to the app by typing `termux-setup-storage`
3. Install git by `pkg install git`
4. Clone this repo with `git clone https://github.com/adithya-s-sekhar/my-first-repo`
5. CD into repo directory with `cd my-first-repo`
6. Type `sh install.sh` to begin installation
 After installation, restart termux.
 
## Dependancies (installed automatically)

1. ffmpeg
2. aria2

## Uninstallation

* Type these commands to call the built-in uninstaller
 1. `cd /data/data/com.termux/files/home/my-first-repo`
 2. `sh uninstall.sh`
