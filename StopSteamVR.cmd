@echo off
cls

echo(
echo STOP STEAM VR
echo =============
echo(

taskkill /im vrmonitor.exe /f
taskkill /im vrserver.exe /f
taskkill /im vrwebhelper.exe /f
taskkill /im vrcompositor.exe /f
taskkill /im vrdashboard.exe /f
taskkill /im steamtours.exe /f
taskkill /im steam.exe /f
taskkill /im steamwebhelper.exe /f

rem timeout /t 1