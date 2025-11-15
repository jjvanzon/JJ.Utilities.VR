@echo off
cls

echo STOP UNNEEDED APPS
echo ==================
echo(
echo Recommended
echo -----------
net stop W3SVC
net stop MSSQLSERVER
net stop SQLTELEMETRY
net stop JetBrainsEtwHost.16
taskkill /im Agent.Listener.exe /f
taskkill /im GoogleDriveFS.exe /f
taskkill /im crashpad_handler.exe
taskkill /im WhatsApp.exe

REM echo(
REM echo Questionnable
REM echo -------------
REM timeout /t 3
REM taskkill /im OfficeClickToRun.exe /f

echo Done.
rem timeout /t 1