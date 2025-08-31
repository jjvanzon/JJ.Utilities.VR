@echo off
cls

echo(
echo STOP REVERB DRIVER
echo ==================
echo(
pnputil /disable-device "USB\VID_045E&PID_0659&MI_04\b&35f12978&0&0004"

REM timeout /t 3
