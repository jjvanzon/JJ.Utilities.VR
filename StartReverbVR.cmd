@echo off
cls

echo(
echo START REVERB VR
echo ===============
echo(

echo Start Steam
echo -----------
timeout /t 2
start "" "C:\Program Files (x86)\Steam\steam.exe"
echo(

REM echo Start Mixed Reality
REM echo -------------------
REM timeout /t 2
REM start "" "C:\Program Files\WindowsApps\Microsoft.MixedReality.Portal_2000.21051.1282.0_x64__8wekyb3d8bbwe\MixedRealityPortal.Brokered.exe" /InvokerPRAID: App 
REM start "" "C:\Program Files\WindowsApps\Microsoft.MixedReality.Portal_2000.21051.1282.0_x64__8wekyb3d8bbwe\MixedRealityPortal.exe" -ServerName:App.AppXzx40k3w1n68mndcqd37444jvdx94yw14.mca
REM echo(

REM echo Start Mixed Reality for Steam
REM echo -----------------------------
REM timeout /t 20
REM start "" "C:\Program Files (x86)\Steam\steamapps\common\MixedRealityVRDriver\bin\win64\OpenVRSettingsUX.exe" /dashboardmode

echo Start VR Home
echo -------------
timeout /t 20
start "" "C:\Program Files (x86)\Steam\steamapps\common\SteamVR\tools\steamvr_environments\game\bin\win64\steamtours.exe" -vr -nowindow
echo(

echo Done.
timeout /t 30