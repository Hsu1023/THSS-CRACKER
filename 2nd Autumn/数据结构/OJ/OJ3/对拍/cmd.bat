:loop
rand.exe
1.exe
2.exe
3.exe
fc temperature.out temperature2.out
if not errorlevel 1 goto loop2
pause
:loop2
fc temperature.out temperature3.out
if not errorlevel 1 goto loop
pause