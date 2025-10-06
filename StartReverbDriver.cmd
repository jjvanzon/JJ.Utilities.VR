@echo off
cls

echo(
echo START REVERB DRIVER
echo ===================
echo(
pnputil /enable-device "USB\VID_045E&PID_0659&MI_04\b&35f12978&0&0004"

echo(
echo HoloLens Sensors (Composite)
echo(
echo ----------------------------
pnputil /enum-devices /deviceid "USB\VID_045E&PID_0659" | findstr /I "Composite" && pnputil /enable-device /deviceid "USB\VID_045E&PID_0659"

echo(
echo HoloLens Sensors (Misc)
echo ----------------------
echo(
pnputil /enable-device /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_02"
pnputil /enum-devices /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_03" | findstr /I "HoloLens" && pnputil /enable-device /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_03"
pnputil /enum-devices /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_04" | findstr /I "HoloLens" && pnputil /enable-device /deviceid "USB\VID_045E&PID_0659&REV_000B&MI_04"


timeout /t 5
