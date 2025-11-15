@echo off
cls

echo(
echo START QUEST VR
echo ==============
echo(

echo Start Service
echo -------------
net start OVRLibraryService

echo Start Steam
echo -----------
timeout /t 2
start "" "C:\Program Files (x86)\Steam\steam.exe"
echo(

REM echo Start Quest Link
REM echo ----------------
REM timeout /t 2
REM start "" "C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe"
REM echo(

echo Start Oculus Tray Tool
echo ----------------------
timeout /t 2
start "" "C:\Program Files (x86)\Oculus Tray Tool\OculusTrayTool.exe"
echo(

echo Start SteamVR
echo -------------
timeout /t 20
start "" "D:\SteamLibrary\steamapps\common\SteamVR\bin\win64\vrmonitor.exe"
echo(

REM echo Start SteamVR Home
REM echo ------------------
REM timeout /t 20
REM start "" "D:\SteamLibrary\steamapps\common\SteamVR\tools\steamvr_environments\game\bin\win64\steamtours.exe" -vr -nowindow
REM echo(

echo Start Oculus Debug Tool
echo -----------------------
timeout /t 30
start "" "C:\Program Files\Oculus\Support\oculus-diagnostics\OculusDebugTool.exe"
echo(

echo Done.
timeout /t 30