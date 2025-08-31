@echo off
cls

echo STOP UNNEEDED APPS
echo ==================
echo(
echo Recommended
echo -----------
REM timeout /t 3
net stop W3SVC
net stop MSSQLSERVER
net stop SQLTELEMETRY
net stop JetBrainsEtwHost.16
taskkill /im Agent.Listener.exe /f
taskkill /im GoogleDriveFS.exe /f
taskkill /im crashpad_handler.exe
taskkill /im WhatsApp.exe

echo(
echo Optional
echo --------
REM timeout /t 3
net stop EpsonScanSvc
REM taskkill /im EEventManager.exe
REM taskkill /im EPPCCMON.EXE

REM echo(
REM echo Questionnable
REM echo -------------
REM timeout /t 3
REM net stop VirtualDesktop.Service.exe
REM taskkill /im OfficeClickToRun.exe /f

echo Done.
REM timeout /t 3