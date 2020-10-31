cmd
cd C:\Program Files\VideoLAN\VLC
vlc --help
dir g:
dir "g:\ZOO 2020\2020-10-09"

dir "g:\ZOO 2020\2020-10-09\2020-10-09_Dame_H\20201009_084612A.mp4"
dir "g:\ZOO 2020\2020-10-09\2020-10-09_Taarn_m_vand\20201009_090712A.mp4"

copy "g:\ZOO 2020\2020-10-09\2020-10-09_Dame_H\20201009_084612A.mp4" c:\tmp
dir c:\tmp
vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Dame_H\20201009_084612A.mp4"
start "fil1" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Dame_H\20201009_084612A.mp4" && start "fil2" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Taarn_m_vand\20201009_090712A.mp4"


https://superuser.com/questions/665838/vlc-play-two-mp3s-simultaneously-from-command-line

vlc -I rc
vlc -I ncurses
vlc -I telnet --telnet-password test
vlc -I telnet --telnet-password test --rtsp-host 0.0.0.0:5554
vlc --ttl 12 -vvv --color -I telnet --telnet-password videolan --rtsp-host 0.0.0.0:5554
ping 127.0.0.1
vlc --ttl 12 -vvv --color -I telnet --telnet-password videolan --rtsp-host 127.0.0.1:5554





set vlc="C:\Program Files\VideoLAN\VLC\vlc.exe"

cmd
d:
cd d:\tmp

### Files ####
dir /s /b *.mp4
set file_1=d:\tmp\dame_h\20201009_084612A.mp4
set file_2=d:\tmp\dame_v\20201009_084636A.mp4
set file_3=d:\tmp\man_cave\20201009_084916A.mp4
set file_4=d:\tmp\mc\20201009_085815A.mp4

echo %file_1%
echo %file_2%
echo %file_3%
echo %file_4%

### Clean ###
taskkill /F /T /IM putty.exe
taskkill /F /T /IM vlc.exe


### RC ####
%vlc% -I rc --rc-host 127.0.0.1:5553
putty telnet://127.0.0.1:5553  


https://www.fosshub.com/KiTTY.html
http://www.9bis.net/kitty/#!pages/CommandLine.md

### Kitty ###
set kitty=d:\tmp\kitty_portable-0.74.2.7.exe
# echo %kitty%
# %kitty%
# %vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw
%vlc% %file_1% -I telnet --telnet-host 127.0.0.1 --telnet-port 5551 --telnet-password=pw
%vlc% %file_2% -I telnet --telnet-host 127.0.0.1 --telnet-port 5552 --telnet-password=pw
%vlc% %file_3% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw
%vlc% %file_4% -I telnet --telnet-host 127.0.0.1 --telnet-port 5554 --telnet-password=pw
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



set helpme=d:\tmp\cmd_help.txt
type %helpme%
putty telnet://127.0.0.1:5553 -m %helpme%


