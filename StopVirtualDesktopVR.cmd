@echo off
cls

echo(
echo STOP VIRTUAL DESKTOP VR
echo =======================

net stop VirtualDesktop.Service.exe

timeout /t 5