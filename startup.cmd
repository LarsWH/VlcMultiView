@echo ...
@echo ---------------------------------
@echo playlist: %1
@echo port: %2
@echo zoom: %3
@echo advance: %4
@set vlc="C:\Program Files\VideoLAN\VLC\vlc.exe"
start "title" %vlc% -I telnet --telnet-host 127.0.0.1 --telnet-port %2 --telnet-password=pw --zoom %3 --start-time %4
::start %vlc%
@echo ---------------------------------
