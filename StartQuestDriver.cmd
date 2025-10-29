@echo off
cls

echo(
echo START QUEST DRIVER
echo ==================

echo(
echo Composite
echo ---------
echo(
pnputil /enum-devices /deviceid "USB\VID_2833&PID_0186"
pnputil /enable-device /deviceid "USB\VID_2833&PID_0186"

rem echo(
rem echo Display
rem echo ------
rem echo(
rem pnputil /enum-devices /instanceid "ROOT\DISPLAY\0000" | findstr /I "Meta Virtual Monitor" && pnputil /enable-device "ROOT\DISPLAY\0000"

echo(
echo Display
echo -------
echo(
rem pnputil /enum-devices /deviceid "Root\MetaVirtualScreenDriver"
pnputil /enable-device /deviceid "Root\MetaVirtualScreenDriver"

echo(
echo Controller
echo ----------
echo(
pnputil /enum-devices /instanceid "ROOT\SYSTEM\0001" | findstr /I "Oculus Virtual Gamepad" && pnputil /enable-device "ROOT\SYSTEM\0001"

echo(
echo Audio
echo -----
echo(
rem pnputil /enum-devices /instanceid "ROOT\MEDIA\0000" | findstr /I "Oculus Virtual Audio Device" && pnputil /enable-device "ROOT\MEDIA\0000"
rem pnputil /enum-devices /deviceid "Root\oculusvad_OculusVad"
pnputil /enable-device /deviceid "Root\oculusvad_OculusVad"
pnputil /enable-device "SWD\MMDEVAPI\{0.0.0.00000000}.{FE52B52C-624B-4EB7-9720-FD9E07ADCE74}"

echo(
echo Microphone
echo ----------
echo(
pnputil /enable-device "SWD\MMDEVAPI\{0.0.1.00000000}.{8EC58D05-CE01-44CD-9DCF-6695EBDBE920}"

echo(
echo Highwind (Nerd Stuff)
echo ---------------------
echo(
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_02\9&2249EA78&1&0002" | findstr /I "Highwind" && pnputil /enable-device "USB\VID_2833&PID_0186&MI_02\9&2249EA78&1&0002"

echo(
echo ADB (Nerd Stuff)
echo ----------------
echo(
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_01\9&2249EA78&1&0001" | findstr /I "Reality Labs Composite ADB Interface" && pnputil /enable-device "USB\VID_2833&PID_0186&MI_01\9&2249EA78&1&0001"
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_03\9&2249ea78&1&0003" | findstr /I "ADB" && pnputil /enable-device "USB\VID_2833&PID_0186&MI_03\9&2249ea78&1&0003"

echo(
echo XRSP (Nerd Stuff)
echo -----------------
echo(
pnputil /enum-devices /instanceid "USB\VID_2833&PID_0186&MI_00\9&2249EA78&1&0000" | findstr /I "Reality Labs Composite XRSP Interface" && pnputil /enable-device "USB\VID_2833&PID_0186&MI_00\9&2249EA78&1&0000"

rem BUG: Infinite on/off upon boot
rem echo(
rem echo Boot-Up Disk (USB Storage)
rem echo --------------------------
rem echo(
rem pnputil /enum-devices /deviceid "USB\VID_2833&PID_0083" | findstr /I "Storage" && pnputil /enable-device /deviceid "USB\VID_2833&PID_0083"

echo(
echo Boot-Up Disk (Linux File-Stor)
echo ------------------------------
echo(
rem pnputil /enum-devices /deviceid "USBSTOR\DiskLinux___File-Stor_Gadget0419"
pnputil /enable-device /deviceid "USBSTOR\DiskLinux___File-Stor_Gadget0419"

timeout /t 1