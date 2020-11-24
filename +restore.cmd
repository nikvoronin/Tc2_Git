@echo off
SETLOCAL
set TcPlcCtrl="C:\TwinCAT\Plc\TCatPlcCtrl.exe"
set ProjectDir=.\src

choice /c YN /T 30 /D N /M "Do you want to restore working dir up to the last commit [default = N]"
if %ERRORLEVEL% EQU 2 EXIT 1

if exist %ProjectDir%\*.pro (
	FOR %%i IN (%ProjectDir%\*.pro) DO (
		CALL :RestoreProject %%~ni
	)
)

del %cmd%
exit /b

:RestoreProject

set ProjectName=%1

set ProjectPath=%ProjectDir%\%ProjectName%.pro
set ImportFrom=%ProjectDir%\~%ProjectName%

set cmd=__project_export.tmp
echo replace yesall > %cmd%
echo query off ok >> %cmd%
echo file open %ProjectPath% >> %cmd%
echo project import %ImportFrom%\*.* >> %cmd%
echo file save
echo file close >> %cmd%
echo file quit >> %cmd%

%TcPlcCtrl% /show hide /cmd %cmd%

exit /b

ENDLOCAL
