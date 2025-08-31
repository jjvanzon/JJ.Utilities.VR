@echo off
cls

echo(
echo START QUEST VR
echo ==============
echo(

echo Start Steam
echo -----------
timeout /t 2
start "" "C:\Program Files (x86)\Steam\steam.exe"
echo(

REM REM echo Start Quest Link
REM REM echo ----------------
REM REM timeout /t 2
REM REM start "" "C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe"
REM REM echo(

echo Start Oculus Tray Tool
echo ----------------------
timeout /t 2
start "" "C:\Program Files (x86)\Oculus Tray Tool\OculusTrayTool.exe"
echo(

REM REM echo Start Task Manager
REM REM echo ------------------
REM REM timeout /t 2
REM REM start "" "C:\Windows\System32\Taskmgr.exe"
REM REM echo(

REM REM echo Start SteamVR
REM REM echo -------------
REM REM timeout /t 20
REM REM start "" "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\bin\win64\vrmonitor.exe"
REM REM echo(

REM REM echo Start SteamVR Home
REM REM echo ------------------
REM REM timeout /t 20
REM REM start "" "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\tools\steamvr_environments\game\bin\win64\steamtours.exe" -vr -nowindow
REM REM echo(

echo Start Oculus Debug Tool
echo -----------------------
timeout /t 30
start "" "C:\Program Files\Oculus\Support\oculus-diagnostics\OculusDebugTool.exe"
echo(

echo Done.
timeout /t 30