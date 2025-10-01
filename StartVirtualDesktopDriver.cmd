@echo off
cls

echo(
echo START VIRTUAL DESKTOP DRIVER
echo ============================
echo(
echo Audio
echo -----
echo(
pnputil /enum-devices /instanceid "ROOT\MEDIA\0001" | findstr /I "Virtual Desktop Audio" && pnputil /enable-device "ROOT\MEDIA\0001"

echo(
echo Controller
echo ----------
echo(
pnputil /enum-devices /instanceid "ROOT\SYSTEM\0002" | findstr /I "Virtual Desktop Gamepad" && pnputil /enable-device "ROOT\SYSTEM\0002"

timeout /t 5
