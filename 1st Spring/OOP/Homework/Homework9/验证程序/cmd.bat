@ECHO ON
set value=1
:loop
createdata.exe >data.txt
Project.exe>out1.txt<data.txt
standardout.exe>out2.txt<data.txt
fc out1.txt out2.txt
Echo %value% sets of data have been verified!
set /a value=value+1
if not errorlevel 1 goto loop
pause