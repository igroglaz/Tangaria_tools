cd D:\GitHub\Tangaria\PWMAngband\src\bcc32c\
del ..\client\c-cmd.obj
del ..\client\main.obj
del ..\client\set_focus.obj
del ..\client\sound-core.obj
del ..\client\ui-display.obj
make -f makefile.sdl
pause
move mangclient_sdl.exe ..\..\mangclient_sdl.exe