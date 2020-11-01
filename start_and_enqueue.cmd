@call config.cmd
@echo ---------------------------------
@echo playlist: %1
@echo port: %2
@echo zoom: %3
@echo advance: %4

:: Start VLC
start "zzz" %vlc_full% -I telnet --telnet-host 127.0.0.1 --telnet-port %2 --telnet-password=pw --zoom %3 --start-time %4

:: Use KiTTY to fill the queue
for /F "tokens=*" %%A in (%1) do start "xxx" %kitty_full% telnet://master@127.0.0.1:%2 -pass pw -cmd "enqueue %%A\nquit"
@echo ---------------------------------
