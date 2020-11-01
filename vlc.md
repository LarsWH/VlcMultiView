cmd
cd C:\Program Files\VideoLAN\VLC
vlc --help
# start "fil1" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Dame_H\20201009_084612A.mp4" && start "fil2" vlc "g:\ZOO 2020\2020-10-09\2020-10-09_Taarn_m_vand\20201009_090712A.mp4"


https://superuser.com/questions/665838/vlc-play-two-mp3s-simultaneously-from-command-line


cmd
d:
cd d:\tmp

# https://www.fosshub.com/KiTTY.html
# http://www.9bis.net/kitty/#!pages/CommandLine.md
set kitty=d:\tmp\kitty_portable-0.74.2.7.exe
set vlc="C:\Program Files\VideoLAN\VLC\vlc.exe"

# ================ Clean =================
taskkill /F /T /IM kitty_portable-0.74.2.7.exe
taskkill /F /T /IM vlc.exe
taskkill /F /T /IM vlc.exe
taskkill /F /T /IM vlc.exe

call startloop.cmd
call run.cmd play
call run.cmd pause
call run_stay.cmd playlist




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
