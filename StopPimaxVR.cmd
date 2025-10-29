@echo off
cls

echo(
echo STOP PIMAX VR
echo =============
echo(

taskkill /im PimaxClient.exe /f
taskkill /im vrss_gaze_provider.exe /f
taskkill /im PiServiceLauncher.exe /f
net stop "Tobii VR4PIMAXP3B Platform Runtime"

rem timeout /t 1