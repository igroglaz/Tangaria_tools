cd C:\GitHub\Tangaria\PWMAngband\src\bcc32c\
call clean.bat
pause
call client.bat
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
copy /y C:\GitHub\Tangaria\PWMAngband\lib\gamedata C:\GitHub\Tangaria_release\lib\gamedata
copy /y C:\GitHub\Tangaria\PWMAngband\lib\customize C:\GitHub\Tangaria_release\lib\customize
copy /y C:\GitHub\Tangaria\PWMAngband\lib\tiles\tangaria C:\GitHub\Tangaria_release\lib\tiles\tangaria

copy /y C:\GitHub\Tangaria\PWMAngband\lib\gamedata C:\games\Tangaria\lib\gamedata
copy /y C:\GitHub\Tangaria\PWMAngband\lib\customize C:\games\Tangaria\lib\customize
copy /y C:\GitHub\Tangaria\PWMAngband\lib\tiles\tangaria C:\games\Tangaria\lib\tiles\tangaria
pause