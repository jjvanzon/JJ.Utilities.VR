@echo off
cls

echo(
echo STOP QUEST VR
echo =============
echo(

taskkill /im OculusTrayTool.exe /f
taskkill /im OculusClient.exe /f
taskkill /im OculusDash.exe /f
taskkill /im OculusDebugTool.exe /f
taskkill /im OVRRedir.exe /f
taskkill /im OVRServer_x64.exe /f
taskkill /im OVRServiceLauncher.exe /f
taskkill /im MQRDCrashpadHandler.exe /f
taskkill /im MQRDCrashpadHandler.exe /f
taskkill /im oculus-platform-runtime.exe /f
taskkill /im RemoteDesktopCompanion.exe /f

rem timeout /t 1