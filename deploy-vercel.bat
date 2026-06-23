@echo off
cd /d "%~dp0"
where npx >nul 2>nul
if errorlevel 1 (
  echo Node.js belum terpasang.
  echo Instal Node.js dari https://nodejs.org lalu jalankan kembali file ini.
  pause
  exit /b 1
)

echo Login dan deploy website ke Vercel...
call npx vercel@latest --prod
pause
