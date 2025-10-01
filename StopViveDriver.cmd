@echo off
cls

echo(
echo STOP VIVE DRIVER
echo ================
echo(
pnputil /disable-device "USB\VID_0BB4&PID_0342\207A307A5959"
pnputil /disable-device "HID\VID_0BB4&PID_0342\a&1f7296&0&0000"
pnputil /disable-device "USB\VID_0BB4&PID_030A\8&2305291&0&4"

echo(
echo Audio
echo -----
echo(
pnputil /enum-devices /instanceid "USB\VID_0BB4&PID_030B&MI_00\A&2C3E2CC7&0&0000" | findstr /I "VIVE Pro Multimedia Audio" && pnputil /disable-device "USB\VID_0BB4&PID_030B&MI_00\A&2C3E2CC7&0&0000"
pnputil /disable-device /deviceid "USB\VID_0BB4&PID_030B&REV_0125&MI_03"

echo(
echo Camera
echo -----
echo(
pnputil /enum-devices /instanceid "USB\VID_0BB4&PID_030C&MI_00\9&21547B17&0&0000" | findstr /I "VIVE Pro Multimedia Camera" && pnputil /disable-device "USB\VID_0BB4&PID_030C&MI_00\9&21547B17&0&0000"

timeout /t 5