@echo off
title BypassWin11
mode 80,25
color 07
REM Bypass Windows 11 System Requirements
REM Author: Haitham Aouati
REM Social: @haithamaouati
cls

goto :main

:main
echo Bypass Windows 11 System Requirements.
echo.
echo  Version: 1.1
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo  [*] Bypass CPU Check
echo  [*] Bypass Storage Check
echo  [*] Bypass RAM Check
echo  [*] Bypass TPM Check
echo  [*] Bypass SecureBoot Check
echo  [*] Allow Upgrade With Unsupported TPM or CPU
echo.
pause
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassCPUCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassStorageCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassRAMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassTPMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /f /t REG_DWORD /d 00000001
echo Go back to previous back and then go to the next page to proceed.
echo The "Unsupported" screen should no longer appear and you can continue the installation.
echo.
pause && exit
goto :eof
