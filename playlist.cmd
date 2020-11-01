:: List all files within the folder in a '.txt' file:
for /F "tokens=*" %%A in (folders.txt) do where /R %%A *.mp4 > %%A\playlist.txt
:: Print the resulting file:
for /F "tokens=*" %%A in (folders.txt) do type %%A\playlist.txt

:: Convert the file paths in the above file '\' -> '\\' and give the file the extention '.pl'
for /F "tokens=*" %%A in (folders.txt) do powershell -Command "(gc %%A\playlist.txt) -replace '\\', '\\' | Out-File -encoding ASCII %%A\playlist.pl"
:: Print the resulting file:
for /F "tokens=*" %%A in (folders.txt) do type %%A\playlist.pl

:: Generate an 'advance.txt' file if none exists:
for /F "tokens=*" %%A in (folders.txt) do (if not exist %%A\advance.cmd echo set advance=0 > %%A\advance.cmd)

