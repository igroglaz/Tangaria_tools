cd C:\GitHub\Tangaria\PWMAngband\src\bcc32c\
call clean.bat
pause
call client.bat
pause
call server.bat
pause
copy /y C:\GitHub\Tangaria\PWMAngband\mangband.exe C:\GitHub\Tangaria_release
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient.exe C:\GitHub\Tangaria_release
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient_gcu.exe C:\GitHub\Tangaria_release
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient_sdl.exe C:\GitHub\Tangaria_release
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient_sdl2.exe C:\GitHub\Tangaria_release
copy /y C:\GitHub\Tangaria\PWMAngband\changes.txt C:\GitHub\Tangaria_release
copy /y C:\GitHub\Tangaria\PWMAngband\Manual.html C:\GitHub\Tangaria_release

copy /y C:\GitHub\Tangaria\PWMAngband\mangband.exe C:\games\Tangaria
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient.exe C:\games\Tangaria
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient_gcu.exe C:\games\Tangaria
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient_sdl.exe C:\games\Tangaria
copy /y C:\GitHub\Tangaria\PWMAngband\mangclient_sdl2.exe C:\games\Tangaria
copy /y C:\GitHub\Tangaria\PWMAngband\changes.txt C:\games\Tangaria
copy /y C:\GitHub\Tangaria\PWMAngband\Manual.html C:\games\Tangaria
pause
xcopy /E /I /Y C:\GitHub\Tangaria\PWMAngband\lib\gamedata C:\GitHub\Tangaria_release\lib\gamedata
xcopy /E /I /Y C:\GitHub\Tangaria\PWMAngband\lib\customize C:\GitHub\Tangaria_release\lib\customize
xcopy /E /I /Y C:\GitHub\Tangaria\PWMAngband\lib\tiles\tangaria C:\GitHub\Tangaria_release\lib\tiles\tangaria

xcopy /E /I /Y C:\GitHub\Tangaria\PWMAngband\lib\gamedata C:\games\Tangaria\lib\gamedata
xcopy /E /I /Y C:\GitHub\Tangaria\PWMAngband\lib\customize C:\games\Tangaria\lib\customize
xcopy /E /I /Y C:\GitHub\Tangaria\PWMAngband\lib\tiles\tangaria C:\games\Tangaria\lib\tiles\tangaria

pause