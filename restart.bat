@echo off
cd "D:\GitHub\Tangaria\PWMAngband\"
:loop
echo Server restart at %date% %time%
Start /w mangband.exe
timeout /t 60
goto loop