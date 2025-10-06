@echo off
cls

echo(
echo START VIVE DRIVER
echo =================
echo(

echo(
echo Misc
echo ----
echo(
rem pnputil /enum-devices /instanceid "USB\VID_0BB4&PID_030A\8&2305291&0&4"
pnputil /enable-device "USB\VID_0BB4&PID_030A\8&2305291&0&4"
rem timeout /t 3

echo(
echo HID
echo ---
echo(
rem pnputil /enum-devices  /deviceid "HID\VID_0BB4&PID_0342"
pnputil /enable-device /deviceid "HID\VID_0BB4&PID_0342"
rem timeout /t 3

echo(
echo USB
echo ---
echo(
rem pnputil /enum-devices  /deviceid "USB\VID_0BB4&PID_0342"
pnputil /enable-device /deviceid "USB\VID_0BB4&PID_0342"
rem timeout /t 3

echo(
echo Display
echo -------
rem pnputil /enum-devices  /deviceid "MONITOR\HVRAA04"
pnputil /enable-device /deviceid "MONITOR\HVRAA04"
echo(
rem timeout /t 3

echo(
echo Audio (USB Composite)
echo ---------------------
echo(
rem pnputil /enum-devices  /deviceid "USB\VID_0BB4&PID_030B"
pnputil /enable-device /deviceid "USB\VID_0BB4&PID_030B"
rem timeout /t 3

echo(
echo Audio (Buttons HID)
echo -------------------
echo(
rem pnputil /enum-devices /deviceid "HID\VID_0BB4&PID_030B&MI_03"
pnputil /enable-device /deviceid "HID\VID_0BB4&PID_030B&MI_03"
rem timeout /t 3

echo(
echo Audio (Buttons USB)
echo -------------------
echo(
rem pnputil /enum-devices  /deviceid "USB\VID_0BB4&PID_030B&MI_03"
pnputil /enable-device /deviceid "USB\VID_0BB4&PID_030B&MI_03"
rem timeout /t 3

echo(
echo Audio (IO Parent)
echo -----------------
echo(
rem pnputil /enum-devices /deviceid "USB\VID_0BB4&PID_030B&MI_00" | findstr /I "VIVE Pro Multimedia Audio" && pnputil /enable-device /deviceid "USB\VID_0BB4&PID_030B&MI_00"

rem BUG: Infinite on/off upon boot
rem echo Camera (USB Composite)
rem echo ----------------------
rem echo(
rem pnputil /enum-devices  /deviceid "USB\VID_0BB4&PID_030C"
rem pnputil /enable-device /deviceid "USB\VID_0BB4&PID_030C"

echo(
echo Camera
echo ------
echo(
rem pnputil /enum-devices /deviceid "USB\VID_0BB4&PID_030C&MI_00"
pnputil /enable-device /deviceid "USB\VID_0BB4&PID_030C&MI_00"

timeout /t 5