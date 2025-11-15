@echo off
cls
call StopSteamVR
call StopViveVR
call StopQuestVR
call StopReverbVR
call StopPimaxVR
call StopReverbDriver
rem Note: requires requires reboot
call StopViveDriver
call StopQuestDriver
call StopVirtualDesktopVR
REM call StopVirtualDesktopDriver
REM call StopBigscreenDriver