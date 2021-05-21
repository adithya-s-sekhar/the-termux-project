# No Longer Maintained

# The Termux Project
![GitHub](https://img.shields.io/github/license/adithya-s-sekhar/the-termux-project) ![GitHub last commit](https://img.shields.io/github/last-commit/adithya-s-sekhar/the-termux-project?label=last%20updated)

Some scripts for termux with inbuilt updater.

## Currently includes:

- WhatsApp Status Creator Tool
- Download manager for aria2c
- Simple client for youtube-dl


## Screenshots (Old, soon to be updated)

<img src="https://github.com/adithya-s-sekhar/screenshot-repo/blob/master/the-termux-project/index.jpg?raw=true" width="150px"><img src="https://github.com/adithya-s-sekhar/screenshot-repo/blob/master/the-termux-project/wastatus.jpg?raw=true" width="150px"><img src="https://github.com/adithya-s-sekhar/screenshot-repo/blob/master/the-termux-project/aria2.jpg?raw=true" width="150px"><img src="https://github.com/adithya-s-sekhar/screenshot-repo/blob/master/the-termux-project/yt.jpg?raw=true" width="150px"><br>


## Installation

<b>NOTE: Update termux inbuilt packages with `pkg upgrade` before continuing to prevent OpenSSL errors or youtube-dl won't install.</b>

<b>Sometimes python or some of it's dependencies will fail to install (bad network). In which case you can use the updater function to install the missing ones.</b>

### Clone and use install.sh

1. Install termux from

- [Play Store](https://play.google.com/store/apps/details?id=com.termux) or
- [F-Droid](https://f-droid.org/en/packages/com.termux/)

2. Grant storage permission to the app by typing

`termux-setup-storage`

3. Install git

`pkg install git`

4. Clone this repo

`git clone --depth 1 https://github.com/adithya-s-sekhar/the-termux-project`

5. Change into directory

`cd the-termux-project`

6. Run the installation script by

`sh install.sh`


## Usage Instructions


### WaStatus - WhatsApp Status Creator Tool

By creating videos with this tool, you can skip WhatsApp's awful low quality processing and upload it at the maximum quality possible.

#### Video Status

The WaStatus window contains, in order of appearance

<b>Input file:</b>This is where you provide the name of the input file. By default the current folder is the root of your Internal Storage. 
If the file is in any subfolder, give a path to the file starting from Internal.
eg: If it's AwesomeVideo.mp4 in the Download folder, provide input like Download/AwesomeVideo.mp4

It's recommended to just copy the input video outside any folder to the root of Internal Storage for ease of use.

<b>Start Time:</b> The time at ffmpeg should start cutting the video. This should be given in 00:00:00 format.

<b>eg:</b> For cutting at 3 minutes 20 seconds, Start Time: 00:03:20

<b>Length of video:</b> How long should the video be cut. Give a value in seconds.

<b>eg:</b> To cut 20 seconds, Length of video: 20

<b>Output filename:</b> Name for the output file, can be anything.

Cropping, Resizing, Rotating instructions will be added later. But those should be self explanatory.

#### Audio Status

soon™


### aria2manager

Paste URL, pick a filename and boom. It's just a simple downloader.

To resume a download if a link expires, paste the new URL and pick the same filename.


### youtube-dl

Supports youtube videos, playlists, and other websites.

Paste the URL, pick a format if it's a youtube link and it will try to download with that set as the maximum quality.

If you pick 720p and it is not available, the script will auto choose the next higher quality.

If the video isn't a youtube link, you can pick the best or worst option.

PS: Embedding thumbnail to audio downloads is disabled since 27/June/2020 because YouTube has started to use WEBP instead of JPG which atomicparsley doesn't support.
A patch was submitted to youtube-dl team which converts the thumbnail to jpg. This feature will be reenabled when that update drops ;)

#### termux-url-opener

You can also share any webpage with playing video to termux to start youtube-dl directly for that link.


## Updation

The script provides an option to update changes from this repo right on the first page.<br>
<img src="https://github.com/adithya-s-sekhar/screenshot-repo/blob/master/the-termux-project/update.jpg?raw=true" width="150px"><br>


## Uninstallation

The script provides an option to uninstall the script right on the first page.<br>
<img src="https://github.com/adithya-s-sekhar/screenshot-repo/blob/master/the-termux-project/uninstall.jpg?raw=true" width="150px">
