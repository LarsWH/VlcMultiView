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
### Clean ###
taskkill /F /T /IM putty.exe
taskkill /F /T /IM vlc.exe

### RC ####
%vlc% -I rc --rc-host 127.0.0.1:5553
putty telnet://127.0.0.1:5553  

### Telnet ###
%vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw
#putty telnet://127.0.0.1:5553
set mypw=d:\tmp\pw.txt
echo pw >  %mypw%
echo pw >>  %mypw%
type %mypw%
putty telnet://127.0.0.1:5553 -m %mypw%  

### Telnet ###
%vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw
#putty telnet://127.0.0.1:5553
set mypw=d:\tmp\pw.txt
echo pw >  %mypw%
echo pw >>  %mypw%
type %mypw%
putty telnet://127.0.0.1:5553 -m %mypw%  

https://www.fosshub.com/KiTTY.html
http://www.9bis.net/kitty/#!pages/CommandLine.md

### Kitty ###
%vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port 5553 --telnet-password=pw
set kitty=d:\tmp\kitty_portable-0.74.2.7.exe
echo %kitty%
%kitty%

%kitty% telnet://master@127.0.0.1:5553 -pass pw
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "help"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "help\ndescription"
%kitty% telnet://master@127.0.0.1:5553 -pass pw -cmd "help\ndescription\nquit"


set helpme=d:\tmp\cmd_help.txt
type %helpme%
putty telnet://127.0.0.1:5553 -m %helpme%


d:
cd d:\tmp

wsl
telnet 127.0.0.1 5553
echo 'help' | telnet 127.0.0.1 5553
( echo open 127.0.0.1 5553 
sleep 5
echo your_login
sleep 5
echo your_password
sleep 5
echo hostname
sleep 5
echo exit ) | telnet

# WSL
nc -zv 12if7.0.0.1 5553
ifconfig
# PS
Test-NetConnection 127.0.0.1 -Port 5553
