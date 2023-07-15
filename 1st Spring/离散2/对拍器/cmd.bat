:loop
rand.exe
1.exe
judge.exe
fc std.txt judge.txt
if not errorlevel 1 goto loop
pause