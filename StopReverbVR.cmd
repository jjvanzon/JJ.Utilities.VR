@echo off
cls

echo(
echo STOP REVERB VR
echo ==============
echo(
net stop spectrum
taskkill /im MixedRealityPortal.Brokered.exe /f
taskkill /im MixedRealityPortal.exe /f
taskkill /im OpenVRSettingsUX.exe /f
taskkill /im HoloShellApp.exe /f
taskkill /im HoloCameraApp.exe /f
taskkill /im Passthrough.exe /f
taskkill /im SpeechRuntime.exe /f
net stop SharedRealitySvc

rem timeout /t 1
