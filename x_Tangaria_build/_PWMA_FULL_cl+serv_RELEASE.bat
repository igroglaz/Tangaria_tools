cd D:\GitHub\Tangaria\PWMAngband\src\bcc32c\
call clean.bat
pause
call client.bat
pause
call server.bat
pause
copy /y D:\GitHub\Tangaria\PWMAngband\mangband.exe D:\GitHub\Tangaria_release
copy /y D:\GitHub\Tangaria\PWMAngband\mangclient.exe D:\GitHub\Tangaria_release
copy /y D:\GitHub\Tangaria\PWMAngband\mangclient_gcu.exe D:\GitHub\Tangaria_release
copy /y D:\GitHub\Tangaria\PWMAngband\mangclient_sdl.exe D:\GitHub\Tangaria_release
copy /y D:\GitHub\Tangaria\PWMAngband\mangclient_sdl2.exe D:\GitHub\Tangaria_release
copy /y D:\GitHub\Tangaria\PWMAngband\changes.txt D:\GitHub\Tangaria_release
copy /y D:\GitHub\Tangaria\PWMAngband\Manual.html D:\GitHub\Tangaria_release

copy /y D:\GitHub\Tangaria\PWMAngband\mangclient.exe D:\games\Tangaria
copy /y D:\GitHub\Tangaria\PWMAngband\mangclient_gcu.exe D:\games\Tangaria
copy /y D:\GitHub\Tangaria\PWMAngband\mangclient_sdl.exe D:\games\Tangaria
copy /y D:\GitHub\Tangaria\PWMAngband\mangclient_sdl2.exe D:\games\Tangaria
copy /y D:\GitHub\Tangaria\PWMAngband\changes.txt D:\games\Tangaria
copy /y D:\GitHub\Tangaria\PWMAngband\Manual.html D:\games\Tangaria
pause
copy /y D:\GitHub\Tangaria\PWMAngband\lib\gamedata D:\GitHub\Tangaria_release\lib\gamedata
copy /y D:\GitHub\Tangaria\PWMAngband\lib\customize D:\GitHub\Tangaria_release\lib\customize
copy /y D:\GitHub\Tangaria\PWMAngband\lib\tiles\tangaria D:\GitHub\Tangaria_release\lib\tiles\tangaria

copy /y D:\GitHub\Tangaria\PWMAngband\lib\gamedata D:\games\Tangaria\lib\gamedata
copy /y D:\GitHub\Tangaria\PWMAngband\lib\customize D:\games\Tangaria\lib\customize
copy /y D:\GitHub\Tangaria\PWMAngband\lib\tiles\tangaria D:\games\Tangaria\lib\tiles\tangaria
pause