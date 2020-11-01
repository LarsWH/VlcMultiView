@echo off
set /a port=5550
@set kitty=d:\tmp\kitty_portable-0.74.2.7.exe

:: https://stackoverflow.com/a/2919699/1617124
setlocal ENABLEDELAYEDEXPANSION 
for /F "tokens=*" %%A in (folders.txt) do (
    set /a port=port+1
    %kitty% telnet://master@127.0.0.1:!port! -pass pw -cmd "%1"
) 
endlocal
