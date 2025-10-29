@echo off
cls

echo(
echo STOP VIVE DRIVER
echo ================
echo(

echo(
echo HID
echo ---
echo(
rem pnputil /enum-devices /deviceid "HID\VID_0BB4&PID_0342\a&1f7296&0&0000"
pnputil /disable-device /deviceid "HID\VID_0BB4&PID_0342"
rem timeout /t 3

echo(
echo USB
echo ----
echo(
rem pnputil /enum-devices /deviceid "USB\VID_0BB4&PID_0342"
pnputil /disable-device /deviceid "USB\VID_0BB4&PID_0342"
rem timeout /t 3

echo(
echo Misc
echo ----
echo(
rem pnputil /enum-devices /instanceid "USB\VID_0BB4&PID_030A\8&2305291&0&4"
pnputil /disable-device "USB\VID_0BB4&PID_030A\8&2305291&0&4"
rem timeout /t 3

echo(
echo Display
echo -------
rem pnputil /enum-devices  /deviceid "MONITOR\HVRAA04"
pnputil /disable-device /deviceid "MONITOR\HVRAA04"
echo(
rem timeout /t 3

echo(
echo Audio (Buttons HID)
echo -------------------
echo(
rem pnputil /enum-devices /deviceid "HID\VID_0BB4&PID_030B&MI_03"
pnputil /disable-device /deviceid "HID\VID_0BB4&PID_030B&MI_03"
rem timeout /t 3

echo(
echo Audio (Buttons USB)
echo -------------------
echo(
rem pnputil /enum-devices /deviceid "USB\VID_0BB4&PID_030B&MI_03"
pnputil /disable-device /deviceid "USB\VID_0BB4&PID_030B&MI_03"
rem timeout /t 3

echo(
echo Audio (IO Parent)
echo -----------------
echo(
rem pnputil /enum-devices /deviceid "USB\VID_0BB4&PID_030B&MI_00" 
pnputil /disable-device /deviceid "USB\VID_0BB4&PID_030B&MI_00"
rem timeout /t 3

echo(
echo Audio (USB Composite)
echo ---------------------
echo(
rem pnputil /enum-devices   /deviceid "USB\VID_0BB4&PID_030B"
pnputil /disable-device /deviceid "USB\VID_0BB4&PID_030B"
rem timeout /t 3

echo(
echo Camera
echo ------
echo(
rem pnputil /enum-devices   /deviceid "USB\VID_0BB4&PID_030C&MI_00"
pnputil /disable-device /deviceid "USB\VID_0BB4&PID_030C&MI_00"
rem timeout /t 3

rem BUG: Infinite on/off upon boot
rem echo(
rem echo Camera (USB Composite)
rem echo ----------------------
rem echo(
rem pnputil /enum-devices  /deviceid "USB\VID_0BB4&PID_030C"
rem pnputil /disable-device /deviceid "USB\VID_0BB4&PID_030C"

rem timeout /t 1