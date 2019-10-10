rem https://infosys.beckhoff.com/content/1033/tcplccontrol/html/tcplcctrl_addcommandline.htm
@echo off
SETLOCAL
set TcPlcCtrl="C:\TwinCAT\Plc\TCatPlcCtrl.exe"

if exist "*.pro" (
	FOR %%i IN ("*.pro") DO (
		CALL :ExportProject %%~ni
	)
)

del %cmd%

git add *
git commit -m '%date%-%time%'

exit /b

:ExportProject

set ProjectName=%1

set ProjectPath=%ProjectName%.pro
set cmd=__project_export.tmp
set ExportTo=~%ProjectName%

echo replace yesall > %cmd%
echo query off ok >> %cmd%
echo file open %ProjectPath% >> %cmd%
echo project expmul %ExportTo% >> %cmd%
echo file close >> %cmd%
echo file quit >> %cmd%

%TcPlcCtrl% /show hide /cmd %cmd%

exit /b

ENDLOCAL