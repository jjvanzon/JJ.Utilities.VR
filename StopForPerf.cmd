@echo off
cls

echo STOP FOR PERFORMANCE
echo ====================
echo(

net stop W3SVC
net stop MSSQLSERVER
net stop SQLTELEMETRY
net stop JetBrainsEtwHost.16
net stop "Disc Soft Lite Bus Service"
net stop InstallService
net stop StiSvc
net stop Spooler
net stop defragsvc
net stop EpsonScanSvc
net stop AdobeARMservice
rem Geolocation Service
net stop lfsvc

taskkill /im Agent.Listener.exe /f
taskkill /im GoogleDriveFS.exe /f
taskkill /im crashpad_handler.exe
taskkill /im WhatsApp.exe
taskkill /im BudsManager.exe /f
taskkill /im CrossDeviceResume.exe /f
taskkill /im DTShellHlp.exe /f
taskkill /im EEventManager.exe /f
taskkill /im EPPCCMON.EXE /f
taskkill /im QuickControls.exe /f
taskkill /im SystemSettings.exe /f
taskkill /im UserOOBEBroker.exe /f
taskkill /im WhatsApp.exe /f
taskkill /im MicrosoftSecurityApp.exe /f
taskkill /im nvcplui.exe /f
taskkill /im ShellExperienceHost.exe /f
taskkill /im AdobeCollabSync.exe /f

rem These just restart:
rem net stop "TimeBrokerSvc"
rem Update Orchestrator
rem net stop "UsoSvc"
rem Image Aquisition
rem Windows Update
rem Just restarts:
rem net stop "wuauserv"
rem taskkill /im SearchHost.exe	/f

rem Also probably restarts:
rem taskkill /im OfficeClickToRun.exe /f

echo Done.
timeout /t 5