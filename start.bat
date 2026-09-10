@echo off
echo ====================================================
echo Starting RentEase Full-Stack Platform Server...
echo ====================================================

set PATH=%LOCALAPPDATA%\nodejs;%PATH%

if exist "%APPDATA%\Antigravity\bin\agy-node.cmd" (
    call "%APPDATA%\Antigravity\bin\agy-node.cmd" server/server.js
) else (
    node server/server.js
)
pause
