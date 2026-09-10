@echo off
echo ====================================================
echo Starting RentEase Frontend (Vite) & Backend (Node)...
echo ====================================================

set PATH=%LOCALAPPDATA%\nodejs;%PATH%

start cmd /k "echo Starting Backend API Server at http://localhost:3000... && node server/server.js"
start cmd /k "echo Starting Frontend Vite Dev Server at http://localhost:5173... && npm run dev"

echo RentEase Dev Environment Launched!
echo Frontend: http://localhost:5173 (with Hot Module Replacement)
echo Backend:  http://localhost:3000 (REST API & SQLite Database)
pause
