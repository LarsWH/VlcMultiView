@echo off
call config.cmd
@set /a port=%port_start%
:: https://stackoverflow.com/a/2919699/1617124
setlocal ENABLEDELAYEDEXPANSION 
for /F "tokens=*" %%A in (folders.txt) do (
    set /a port=port+1
    call start_and_enqueue.cmd %%A\playlist.pl !port! %zoom% %advance%
) 
endlocal
