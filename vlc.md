# Multi VLC viewer utility for Windows
This utility is intended to control (start, stop, pause, forward, backward, speed) multiple VLC players, each running each own playlist of MP4 files

The utility is making use of the 'telnet' remote control interface of VLC and unfortunatly this is very sub-optimal in terms of speed/responsiveness, but it works.

## VLC
Install VLC. These instructions are validated with VLC version 2.2.8 and .....

VLC has some 'remote control' options. In this project the 'telnet' method is used.

More information about the command line options: https://wiki.videolan.org/Documentation:Command_line


## Kitty
Download 'KiTTY' which is a fork of 'PuTTY'. KiTTY is needed to automate telnet login with password, asthis is not supported by PuTTY.

KiTTY home: http://www.9bis.net/kitty/#!pages/CommandLine.md

KiTTY download: https://www.fosshub.com/KiTTY.html. I simply downloaded the `kitty-portable-....` version, which is selfcontained (no installation required)

## Setup
After downloading the above tools, proceed like this:
- go to suitable folder and clone this repo: git clone ......
- edit the file `config.cmd` to reflect your installation:
- edit the file `folders.txt` to reflect where your MP4 files are located

## Run
- Open a command prompt in the git folder
- Run `playlist` to generated play-list files based on the `folders.txt` file. 
- Check the folders to see if the generated playlists are OK
- Initialize the system:
  - `startup` which starts VLC and loads playlists, but does not start playback. 
- Now you are ready to start the play-back
  - `run start` : start playing
  - `run pause` : pause playing
  - `run rate <n>` : increase the playback to n-times (yes, there are limits...)
  - `run zoom 0.6` : chang the zoom ratio
- Cleanup
  - `kill-it` : kills running VLC and KiTTY processes
- Info can be read but you must manually write `quit` afterwards
  - `info playlist` : display the loaded playlist
  - `info help` : show the various commands


cmd
d:
cd d:\tmp

