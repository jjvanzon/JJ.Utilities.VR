@echo off
cls

echo(
echo STOP QUEST DRIVER
echo =================
echo(
echo Audio
echo(
pnputil /disable-device "SWD\MMDEVAPI\{0.0.0.00000000}.{FE52B52C-624B-4EB7-9720-FD9E07ADCE74}"
pnputil /enum-devices /instanceid "ROOT\MEDIA\0000" | findstr /I "Oculus Virtual Audio Device" && pnputil /disable-device "ROOT\MEDIA\0000"
echo(
echo Microphone
echo(
pnputil /disable-device "SWD\MMDEVAPI\{0.0.1.00000000}.{8EC58D05-CE01-44CD-9DCF-6695EBDBE920}"
echo(
echo Display
echo(
pnputil /enum-devices /instanceid "ROOT\DISPLAY\0000" | findstr /I "Meta Virtual Monitor" && pnputil /disable-device "ROOT\DISPLAY\0000"
echo(
echo Controller
echo(
pnputil /enum-devices /instanceid "ROOT\SYSTEM\0001" | findstr /I "Oculus Virtual Gamepad" && pnputil /disable-device "ROOT\SYSTEM\0001"
REM timeout /t 1
