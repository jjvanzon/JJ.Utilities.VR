@echo off
cls

echo(
echo STOP VIVE DRIVER
echo ================
echo(
pnputil /disable-device "USB\VID_0BB4&PID_0342\207A307A5959"
pnputil /disable-device "HID\VID_0BB4&PID_0342\a&1f7296&0&0000"
pnputil /disable-device "USB\VID_0BB4&PID_030A\8&2305291&0&4"

REM timeout /t 3
