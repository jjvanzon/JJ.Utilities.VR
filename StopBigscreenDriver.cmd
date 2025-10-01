@echo off
cls

echo(
echo STOP BIGSCREEN DRIVER
echo =====================

echo(
echo Controller
echo ----------
echo(
pnputil /enum-devices /instanceid "ROOT\SYSTEM\0003" | findstr /I "Bigscreen Gamepad" && pnputil /disable-device "ROOT\SYSTEM\0003"

timeout /t 5
