cmd
cd C:\Program Files\VideoLAN\VLC
vlc --help
# start "fil1" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Dame_H\20201009_084612A.mp4" && start "fil2" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Taarn_m_vand\20201009_090712A.mp4"


https://superuser.com/questions/665838/vlc-play-two-mp3s-simultaneously-from-command-line

vlc -I rc
vlc -I ncurses
vlc -I telnet --telnet-password test
vlc -I telnet --telnet-password test --rtsp-host 0.0.0.0:5554
vlc --ttl 12 -vvv --color -I telnet --telnet-password videolan --rtsp-host 0.0.0.0:5554
ping 127.0.0.1
vlc --ttl 12 -vvv --color -I telnet --telnet-password videolan --rtsp-host 127.0.0.1:5554






cmd
d:
cd d:\tmp

### Files ####
dir /s /b *.mp4
set file_1=d:\tmp\dame_h\20201009_084612A.mp4
set file_2=d:\tmp\dame_v\20201009_084636A.mp4
set file_3=d:\tmp\man_cave\20201009_084916A.mp4
set file_4=d:\tmp\mc\20201009_085815A.mp4

set file_1a=d:\\tmp\\dame_h\\20201009_084612A.mp4
set file_2a=d:\\tmp\\dame_v\\20201009_084636A.mp4
set file_3a=d:\\tmp\\man_cave\\20201009_084916A.mp4
set file_4a=d:\\tmp\\mc\\20201009_085815A.mp4

echo %file_1%
echo %file_2%
echo %file_3%
echo %file_4%


### VLC ###
set vlc="C:\Program Files\VideoLAN\VLC\vlc.exe"
### Kitty ###
# https://www.fosshub.com/KiTTY.html
# http://www.9bis.net/kitty/#!pages/CommandLine.md
set kitty=d:\tmp\kitty_portable-0.74.2.7.exe
# echo %kitty%
# %kitty%

# ================ Clean =================
taskkill /F /T /IM kitty_portable-0.74.2.7.exe
taskkill /F /T /IM vlc.exe
taskkill /F /T /IM vlc.exe
taskkill /F /T /IM vlc.exe

cmd
d:
cd d:\tmp
call startloop.cmd

set /a advance=0
set zoom=0.4

set /a port=5550 && setlocal ENABLEDELAYEDEXPANSION && for /F "tokens=*" %A in (folders.txt) do (set /a port=port+1 && call startup.cmd %A\playlist.pl %port% %zoom% %advance%) && endlocal


# ---- Playlist ----
%vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5551 --telnet-password=pw --zoom 0.4 --start-time 1
# %vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5551 --telnet-password=pw --zoom 0.4 --start-time 1 --playlist-enqueue %file_1a%
# %vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5551 --telnet-password=pw --zoom 0.4 --start-time 1 --playlist-enqueue %file_1%
# %vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5551 --telnet-password=pw --zoom 0.4 --start-time 1 --playlist-enqueue %file_1% --playlist-enqueue %file_2%
# %kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "add %file_1%\nquit"


# playlist This works...
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "enqueue %file_1a%\nquit"
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "enqueue %file_2a%\nquit"
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "enqueue %file_3a%\nquit"
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "enqueue %file_4a%\nquit"
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "playlist"

# playlist NEW --------------------


set DIRS=d:\tmp\
set DIR_1=pl1
set DIR_1_PATH=%DIRS%%DIR_1%
set PLAYLIST_1=playlist_1

# for /F "tokens=*" %A in (%PLAYLIST_1%_.txt) do echo %A
# for /F "tokens=*" %A in (%PLAYLIST_1%_.txt) do echo %kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "enqueue %A%\nquit"
for /F "tokens=*" %A in (%PLAYLIST_1%_.txt) do %kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "enqueue %A\nquit"
%kitty% telnet://master@127.0.0.1:5551 -pass pw -cmd "playlist"


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
