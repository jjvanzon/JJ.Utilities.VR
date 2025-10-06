@echo off
cls

echo(
echo STOP REVERB DRIVER
echo ==================
echo(
pnputil /disable-device "USB\VID_045E&PID_0659&MI_04\b&35f12978&0&0004"

echo(
echo Mixed Reality headset
echo ---------------------
echo(
pnputil /enum-devices /instanceid "DISPLAY\HPN36C1\5&14C0EA66&0&UID315651" | findstr /I "Mixed Reality" && pnputil /disable-device "DISPLAY\HPN36C1\5&14C0EA66&0&UID315651"

echo(
echo HoloLens Sensors
echo ----------------
echo(
pnputil /disable-device /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_02"
pnputil /enum-devices /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_03" | findstr /I "HoloLens" && pnputil /disable-device /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_03"
pnputil /enum-devices /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_04" | findstr /I "HoloLens" && pnputil /disable-device /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_04"

echo(
echo HoloLens Sensors (Composite)
echo(
echo ----------------------------
pnputil /enum-devices /deviceid "USB\VID_045E&PID_0659" | findstr /I "Composite" && pnputil /disable-device /deviceid "USB\VID_045E&PID_0659"

timeout /t 5

