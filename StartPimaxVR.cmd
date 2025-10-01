@echo off
cls

echo(
echo START PIMAX VR
echo ==============
echo(

echo Start Service
echo -------------
net start "Tobii VR4PIMAXP3B Platform Runtime"
echo(

echo Start Client
echo -------------
start "" "C:\Program Files\Pimax\PimaxClient\pimaxui\PimaxClient.exe"
echo(

echo Start Service Launcher
echo ----------------------
start "" "C:\Program Files\Pimax\Runtime\PiServiceLauncher.exe"
echo(

echo Start Steam
echo -----------
timeout /t 2
start "" "C:\Program Files (x86)\Steam\steam.exe"
echo(

echo Start SteamVR
echo -------------
timeout /t 30
start "" "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\bin\win64\vrmonitor.exe"
echo(

echo Start SteamVR Home
echo ------------------
timeout /t 15
start "" "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\tools\steamvr_environments\game\bin\win64\steamtours.exe" -vr -REM nowindow
echo(

echo Done.
timeout /t 30