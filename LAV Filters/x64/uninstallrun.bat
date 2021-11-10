@echo off
net stop ehRecvr
regsvr32 /u /s ReClock\ReClock.dll
REM for /F "tokens=3 delims=: " %%H in ('sc query ehRecvr ^| findstr "        STATE"') do (
REM    if /I "%%H" EQU "RUNNING" (
REM    net stop ehRecvr
REM    regsvr32 /u /s ReClock\ReClock.dll
REM    net start ehRecvr
REM   )
REM   if /I "%%H" NEQ "RUNNING" (
REM regsvr32 /u /s ReClock\ReClock.dll
REM   )  
REM )
exit
