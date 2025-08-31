@echo off
cls

echo(
echo STOP REVERB VR
echo ==============
echo(
taskkill /im MixedRealityPortal.Brokered.exe /f
taskkill /im MixedRealityPortal.exe /f
taskkill /im OpenVRSettingsUX.exe /f
taskkill /im HoloShellApp.exe /f
taskkill /im HoloCameraApp.exe /f
taskkill /im Passthrough.exe /f
taskkill /im Spectrum.exe /f
taskkill /im SpeechRuntime.exe /f

REM timeout /t 3
