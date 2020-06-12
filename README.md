# The Termux Project

Some custom scripts for termux with inbuilt updater.

## Currently includes:

- WhatsApp status video maker
- Download manager for aria2c
- Simple client for youtube-dl.

## Installation

1. Install termux from
- [Play Store](https://play.google.com/store/apps/details?id=com.termux) or
- [F-Droid](https://f-droid.org/en/packages/com.termux/)
2. Grant storage permission to the app by typing
`termux-setup-storage`
3. Download the remote install script with
`curl 'https://raw.githubusercontent.com/adithya-s-sekhar/the-termux-project/master/remote-install.sh' -o remote-install.sh`
4. Run the remote install script by
`sh remote-install.sh`

> You can also git clone this repo and do
> `sh install.sh` as well

## Updation

The script provides an option to update changes from this repo right on the first page.

## Uninstallation

Type these commands to call the built-in uninstaller
 1. `cd /data/data/com.termux/files/home/the-termux-project`
 2. `sh uninstall.sh`
