:: for /F "tokens=*" %A in (folders.txt) do echo %A
:: for /F "tokens=*" %A in (folders.txt) do where /R %A *.mp4
for /F "tokens=*" %%A in (folders.txt) do where /R %%A *.mp4 > %%A\playlist.txt
for /F "tokens=*" %%A in (folders.txt) do type %%A\playlist.txt

for /F "tokens=*" %%A in (folders.txt) do powershell -Command "(gc %%A\playlist.txt) -replace '\\', '\\' | Out-File -encoding ASCII %%A\playlist.pl"
for /F "tokens=*" %%A in (folders.txt) do type %%A\playlist.pl
