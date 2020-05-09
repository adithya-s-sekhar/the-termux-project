My first repo, using this to learn git.

# This isn't meant to be used by anyone, these are some hacky scripts just to learn git. I take no responsibilities.
Feel free to judge and criticize, I'm learning after all.

This is the setup script for configuring termux and some scripts made for some odd very specific situations. 
Inside there's a Whatsapp status video maker and never failing download manager for aria2c.

## Installation

1. Install termux from [Play Store](https://play.google.com/store/apps/details?id=com.termux)/[F-Droid](https://f-droid.org/en/packages/com.termux/)
2. Grant storage permission to the app by typing `termux-setup-storage`
3. Install git by `pkg install git`
4. Clone this repo with `git clone https://github.com/adithya-s-sekhar/my-first-repo`
5. CD into repo directory with `cd my-first-repo`
6. Type `sh install.sh` to begin installation
 After installation, restart termux.
 
## Dependancies (installed automatically)

1. python3
2. ffmpeg
3. aria2
4. youtube-dl (for a future feature soon)

## Uninstallation

1. Type these commands to call the built-in uninstaller
 1. `cd /data/data/com.termux/files/home/my-first-repo`
 2. `sh uninstall.sh`
