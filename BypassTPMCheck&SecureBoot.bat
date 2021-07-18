@echo off
title Bypass TPM Check ^& SecureBoot
mode 80,25
color 07
REM Author: Haitham Aouati
REM Social: @haithamaouati
cls

goto :main

:main
echo Windows 11 Setup - Bypass TPM 2.0 ^& SecureBoot Check ^& RAM Check
echo.
echo  Version: 1.0
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
pause
::Bypass TPM 2.0 Check & SecureBoot Check & RAM Check
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassTPMCheck /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassRAMCheck /t REG_DWORD /d 00000001
pause && exit
goto :eof