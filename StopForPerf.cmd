@echo off
cls

call StopForVR

echo STOP FOR PERFORMANCE
echo ====================
echo(

net stop "Disc Soft Lite Bus Service"
net stop "InstallService"
rem Just restarts:
rem net stop "TimeBrokerSvc"
rem Update Orchestrator
rem Just restarts:
rem net stop "UsoSvc"
rem Image Aquisition
net stop "StiSvc"
rem Windows Update
rem Just restarts:
rem net stop "wuauserv"
net stop "Spooler"
net stop "defragsvc"
net stop EpsonScanSvc
net stop AdobeARMservice

taskkill /im BudsManager.exe /f
taskkill /im CrossDeviceResume.exe /f
taskkill /im DTShellHlp.exe /f
taskkill /im EEventManager.exe /f
taskkill /im EPPCCMON.EXE /f
taskkill /im QuickControls.exe /f
rem Just restarts:
rem taskkill /im SearchHost.exe	/f
taskkill /im SystemSettings.exe /f
taskkill /im UserOOBEBroker.exe /f
taskkill /im WhatsApp.exe /f
taskkill /im MicrosoftSecurityApp.exe /f
taskkill /im nvcplui.exe /f
taskkill /im ShellExperienceHost.exe /f

taskkill /im AdobeCollabSync.exe /f

echo Done.
timeout /t 5