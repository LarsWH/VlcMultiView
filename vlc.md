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
- Look in the folders to see the generated playlists look OK
- Run `startloop` to start up the VLC instances and initialize them with playlists. The will MP4 files will not be played yet
- (Optional: run `run_stay playlist` to see if the playlists have been imported. You must manully write `quit` multiple times to exit KiTTY) 
- Now you are ready to start the play-back
  - `run start` to start playing
  - `run pause` to pause playing
  - `run rate <n>` to increase the playback to n-times (yes, there are limits...)



cmd
cd C:\Program Files\VideoLAN\VLC
vlc --help
# start "fil1" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Dame_H\20201009_084612A.mp4" && start "fil2" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Taarn_m_vand\20201009_090712A.mp4"


https://superuser.com/questions/665838/vlc-play-two-mp3s-simultaneously-from-command-line


cmd
d:
cd d:\tmp

# 
# 

%vlc% --version

# ================ Clean =================
kill-it

startloop
run play
run pause
run stop

run_stay playlist
run_stay help





# Start playing ---------------
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "play\nquit"

# Speed stuff ---------------
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "rate 4\nquit"
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "rate 6\nquit"
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "rate 10\nquit"

%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "zoom 1\nquit"




# %vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw
%vlc% %file_1% -I telnet --telnet-host 127.0.0.1 --telnet-port 5551 --telnet-password=pw --zoom 0.4 --start-time 1 
%vlc% %file_2% -I telnet --telnet-host 127.0.0.1 --telnet-port 5552 --telnet-password=pw --zoom 0.4 --start-time 10
%vlc% %file_3% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw --zoom 0.4 --start-time 100
%vlc% %file_4% -I telnet --telnet-host 127.0.0.1 --telnet-port 5554 --telnet-password=pw --zoom 0.4 --start-time 1000
# %vlc% %file_1% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw



# %kitty% telnet://master@127.0.0.1:5553 -pass pw
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "help"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "help\ndescription"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "help\ndescription\nquit"



%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "pause\nquit"
%kitty% telnet://master@127.0.0.1:5552 -pass pw -cmd "pause\nquit"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "pause\nquit"
%kitty% telnet://master@127.0.0.1:5554 -pass pw -cmd "pause\nquit"

%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "play\nquit"
%kitty% telnet://master@127.0.0.1:5552 -pass pw -cmd "play\nquit"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "play\nquit"
%kitty% telnet://master@127.0.0.1:5554 -pass pw -cmd "play\nquit"

%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "rate 4\nquit"
%kitty% telnet://master@127.0.0.1:5552 -pass pw -cmd "rate 4\nquit"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "rate 4\nquit"
%kitty% telnet://master@127.0.0.1:5554 -pass pw -cmd "rate 4\nquit"

%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "rate 1\nquit"
%kitty% telnet://master@127.0.0.1:5552 -pass pw -cmd "rate 1\nquit"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "rate 1\nquit"
%kitty% telnet://master@127.0.0.1:5554 -pass pw -cmd "rate 1\nquit"
