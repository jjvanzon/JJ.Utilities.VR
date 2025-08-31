@echo off
cls

echo(
echo START VIVE VR
echo =============
echo(

echo Start VIVE Service
echo ------------------
timeout /t 1
net start "VIVE Runtime Service"

echo Start VIVE Console
echo ------------------
timeout /t 1
start "" "C:\Program Files (x86)\VIVE\Updater\App\ViveEyeSettings\ViveSettings.exe" /launch_console
echo(

echo Start Steam
echo -----------
timeout /t 2
start "" "C:\Program Files (x86)\Steam\steam.exe"
echo(

echo Start SteamVR
echo -------------
timeout /t 15
start "" "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\bin\win64\vrmonitor.exe"
echo(

echo Start SteamVR Home
echo ------------------
timeout /t 15
start "" "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\tools\steamvr_environments\game\bin\win64\steamtours.exe" -vr -REM nowindow
echo(

echo Done.
timeout /t 30