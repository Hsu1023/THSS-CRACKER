:loop
rand.exe
1.exe
2.exe
fc 1.txt 2.txt
if not errorlevel 1 goto loop
pause