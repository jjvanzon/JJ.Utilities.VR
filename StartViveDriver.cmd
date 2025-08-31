@echo off
cls

echo(
echo START VIVE DRIVER
echo =================
echo(
pnputil /enable-device "USB\VID_0BB4&PID_030A\8&2305291&0&4"
timeout /t 1
pnputil /enable-device "USB\VID_0BB4&PID_0342\207A307A5959"
timeout /t 1
pnputil /enable-device "HID\VID_0BB4&PID_0342\a&1f7296&0&0000"

timeout /t 3