@echo off
call config.cmd
:: https://stackoverflow.com/a/2919699/1617124
setlocal ENABLEDELAYEDEXPANSION 
for /F "tokens=*" %%A in (folders.txt) do (
    set /a port=port+1
    call startup.cmd %%A\playlist.pl !port! %zoom% %advance%
) 
endlocal
