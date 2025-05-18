cd C:\GitHub\PWMA\PWMAngband\src\bcc32c\
call clean.bat
pause
del ..\client\c-cmd.obj
del ..\client\main.obj
del ..\client\set_focus.obj
del ..\client\sound-core.obj
del ..\client\ui-display.obj

make -f makefile.gcu
pause
copy /Y mangclient_gcu.exe ..\..\mangclient_gcu.exe
del mangclient_gcu.exe
