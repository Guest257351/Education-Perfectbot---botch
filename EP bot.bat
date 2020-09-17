@echo off
echo division mode? (Y/N)
set /p YN=
:loop
cd C:\Program Files (x86)\Textract
textra.exe /capture 500 410 880 500 C:\users\%username%\desktop\dat.txt
cd C:\ProgramData\botch
powershell -Command "(gc dat.txt) -replace '><', '*' | Out-File -encoding ASCII output.txt"


< output.txt (
  set /p data=
)
< dat.txt (
  set /p out=
)

set data=%data:O=0%
set data=%data:X=*%
set data=%data:x=*%
set data=%data:?)=3%
set data=%data:—=-%
set data=%data: =%
if %YN% equ Y goto epic
:next
set /a answer=%data%
echo %answer%
echo Set wshshell = wscript.CreateObject("WScript.Shell") >action.vbs
echo wscript.sleep 100 >>action.vbs
echo wshshell.sendkeys "%answer%" >>action.vbs
echo wscript.sleep 100 >>action.vbs
echo wshshell.sendkeys "{ENTER}" >>action.vbs


start action.vbs
echo %time%: >>botlogs.txt
echo %out% >>botlogs.txt
echo %data% >>botlogs.txt
echo %answer% >>botlogs.txt
echo. >>botlogs.txt
timeout 1 >nul
goto loop


:epic
set text1=%data%
set data=%text1:+=/%
goto next

:: powershell -Command "(gc dat.txt) -replace 'O', '0' | Out-File -encoding ASCII output.txt"