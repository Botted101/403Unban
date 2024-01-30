@echo off
setlocal enabledelayedexpansion

set "file_path=%SystemDrive%\Users\%username%\AppData\Local\Roblox\LocalStorage\RobloxCookies.dat"
set "search_string=AQAAANCMnd8BFdERjHoAwE"

if not exist "!file_path!" exit /b 1

set "content="
for /f "usebackq delims=" %%a in ("!file_path!") do (
    set "line=%%a"
    set "content=!content!!line!"
)

set "content=!content:%search_string%=!"

echo !content! > "!file_path!"

exit /b 0