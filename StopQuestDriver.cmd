@echo off
cls

echo(
echo STOP QUEST DRIVER
echo =================

echo(
echo Audio
echo -----
echo(
pnputil /disable-device "SWD\MMDEVAPI\{0.0.0.00000000}.{FE52B52C-624B-4EB7-9720-FD9E07ADCE74}"
rem pnputil /enum-devices /instanceid "ROOT\MEDIA\0000" | findstr /I "Oculus Virtual Audio Device" && pnputil /disable-device "ROOT\MEDIA\0000"
rem pnputil /enum-devices /deviceid "Root\oculusvad_OculusVad"
pnputil /disable-device /deviceid "Root\oculusvad_OculusVad"

echo(
echo Microphone
echo ----------
echo(
pnputil /disable-device "SWD\MMDEVAPI\{0.0.1.00000000}.{8EC58D05-CE01-44CD-9DCF-6695EBDBE920}"

echo(
echo Controller
echo ----------
echo(
pnputil /enum-devices /instanceid "ROOT\SYSTEM\0001" | findstr /I "Oculus Virtual Gamepad" && pnputil /disable-device "ROOT\SYSTEM\0001"

rem echo(
rem echo Display
rem echo -------
rem echo(
rem pnputil /enum-devices /instanceid "ROOT\DISPLAY\0000" | findstr /I "Meta Virtual Monitor" && pnputil /disable-device "ROOT\DISPLAY\0000"

echo(
echo Display
echo -------
echo(
rem pnputil /enum-devices /deviceid "Root\MetaVirtualScreenDriver"
pnputil /disable-device /deviceid "Root\MetaVirtualScreenDriver"

echo(
echo Highwind (Nerd Stuff)
echo ---------------------
echo(
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_02\9&2249EA78&1&0002" | findstr /I "Highwind" && pnputil /disable-device "USB\VID_2833&PID_0186&MI_02\9&2249EA78&1&0002"

echo(
echo ADB (Nerd Stuff)
echo ----------------
echo(
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_01\9&2249EA78&1&0001" | findstr /I "Reality Labs Composite ADB Interface" && pnputil /disable-device "USB\VID_2833&PID_0186&MI_01\9&2249EA78&1&0001"
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_03\9&2249ea78&1&0003" | findstr /I "ADB" && pnputil /disable-device "USB\VID_2833&PID_0186&MI_03\9&2249ea78&1&0003"

echo(
echo XRSP (Nerd Stuff)
echo -----------------
echo(
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_00\9&2249EA78&1&0000" | findstr /I "Reality Labs Composite XRSP Interface" && pnputil /disable-device "USB\VID_2833&PID_0186&MI_00\9&2249EA78&1&0000"

echo(
echo Boot-Up Disk (Linux File-Stor)
echo -------------------------------
echo(
rem pnputil /enum-devices /deviceid "USBSTOR\DiskLinux___File-Stor_Gadget0419"
pnputil /disable-device /deviceid "USBSTOR\DiskLinux___File-Stor_Gadget0419"

rem BUG: Infinite on/off upon boot
rem echo(
rem echo Boot-Up Disk (USB Storage)
rem echo --------------------------
rem echo(
rem pnputil /enum-devices /deviceid "USB\VID_2833&PID_0083" | findstr /I "Storage" && pnputil /disable-device /deviceid "USB\VID_2833&PID_0083"

echo(
echo Composite
echo ---------
echo(
rem pnputil /enum-devices /deviceid "USB\VID_2833&PID_0186"
pnputil /disable-device /deviceid "USB\VID_2833&PID_0186"

rem timeout /t 1
