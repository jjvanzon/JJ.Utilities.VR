@echo off
cls

echo(
echo STOP VIVE VR
echo ============
echo(

taskkill /im ViveSettings.exe /f
net stop "VIVE Runtime Service"
taskkill /im LhStatusMonitor.exe
taskkill /im vivelink.exe
taskkill /im ViveAgentService.exe
taskkill /im ViveDashboard.exe

timeout /t 5