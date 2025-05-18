cd C:\GitHub\Tangaria\PWMAngband\src\bcc32c\

del ..\client\c-cmd.obj
del ..\client\main.obj
del ..\client\set_focus.obj
del ..\client\sound-core.obj
del ..\client\ui-display.obj

make -f makefile.sdl2
pause
copy /Y mangclient_sdl2.exe ..\..\mangclient_sdl2.exe
del mangclient_sdl2.exe
