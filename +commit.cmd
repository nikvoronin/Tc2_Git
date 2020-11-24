@echo off
SETLOCAL
set TcPlcCtrl="C:\TwinCAT\Plc\TCatPlcCtrl.exe"
set ProjectDir=.\src

if exist %ProjectDir%\*.pro (
	FOR %%i IN (%ProjectDir%\*.pro) DO (
		CALL :ExportProject %%~ni
	)
)

del "%cmd%"

git add *
git commit -m '%date%-%time%'

exit /b

:ExportProject

set ProjectName=%1

set ProjectPath=%ProjectDir%\%ProjectName%.pro
set ExportTo=%ProjectDir%\~%ProjectName%

set cmd=__project_export.tmp
echo replace yesall > %cmd%
echo query off ok >> %cmd%
echo file open %ProjectPath% >> %cmd%
echo project expmul %ExportTo% >> %cmd%
echo file close >> %cmd%
echo file quit >> %cmd%

%TcPlcCtrl% /show hide /cmd %cmd%

exit /b

ENDLOCAL
