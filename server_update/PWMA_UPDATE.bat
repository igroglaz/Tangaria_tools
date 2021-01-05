rem git clone git://github.com/draconisPW/PWMAngband.git
rem pause
cd C:\_GitHub\PWMAngband
ren lib z_lib
ren zPWMA_lib lib
git status
pause
git reset --hard
pause
git pull
pause
git status
pause
ren lib zPWMA_lib
ren z_lib lib