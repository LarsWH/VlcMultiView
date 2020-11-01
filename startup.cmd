@echo ...
@echo ---------------------------------
@echo playlist: %1
@echo port: %2
@echo zoom: %3
@echo advance: %4

@set vlc="C:\Program Files\VideoLAN\VLC\vlc.exe"
@set kitty=d:\tmp\kitty_portable-0.74.2.7.exe

start "title" %vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port %2 --telnet-password=pw --zoom %3 --start-time %4

::for /F "tokens=*" %%A in (%1) do echo %%A
::for /F "tokens=*" %%A in (%1) do echo %kitty% telnet://master@127.0.0.1:%2 -pass pw -cmd "enqueue %%A\nquit"
for /F "tokens=*" %%A in (%1) do %kitty% telnet://master@127.0.0.1:%2 -pass pw -cmd "enqueue %%A\nquit"
@echo ---------------------------------
