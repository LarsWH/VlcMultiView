@echo off
call config.cmd

:: https://stackoverflow.com/a/2919699/1617124
setlocal ENABLEDELAYEDEXPANSION 
for /F "tokens=*" %%A in (folders.txt) do (
    set /a port=port+1
    start "yyy" %kitty_full% telnet://master@127.0.0.1:!port! -pass pw -cmd "%1\nquit"
) 
endlocal
