cd C:\GitHub\Tangaria\PWMAngband\src\bcc32c\
call clean.bat
pause
del ..\client\c-cmd.obj
del ..\client\main.obj
del ..\client\set_focus.obj
del ..\client\sound-core.obj
del ..\client\ui-display.obj
make -f makefile.gcu
move mangclient_gcu.exe ..\..\mangclient_gcu.exe
pause