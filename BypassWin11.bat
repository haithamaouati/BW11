@echo off
title BypassWin11
mode 80,25
color 07

cls

net session >nul 2>&1
if %errorlevel% == 0 (
    goto main_menu
) else (
    echo This script must be run as an administrator.
    pause
    exit
)

:main_menu
echo Main menu:
echo 1. Bypass
echo 2. End
echo.

set /p choice=Enter your choice: 

if "%choice%"=="1" goto bypass
if "%choice%"=="2" goto end

:bypass
echo This section allows you to bypass various checks.
echo 1. Bypass CPU Check
echo 2. Bypass Storage Check
echo 3. Bypass RAM Check
echo 4. Bypass TPM Check
echo 5. Bypass SecureBoot Check
echo 6. Allow Upgrade With Unsupported TPM or CPU
echo.

echo Adding keys to bypass various checks...
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassCPUCheck /f /t REG_DWORD /d 00000001
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassStorageCheck /f /t REG_DWORD /d 00000001
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassRAMCheck /f /t REG_DWORD /d 00000001
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassTPMCheck /f /t REG_DWORD /d 00000001
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /f /t REG_DWORD /d 00000001
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /f /t REG_DWORD /d 00000001

echo Keys added successfully.
pause
goto main_menu

:end
echo Are you sure you want to exit the script? (y/n)
set /p confirm=
if /i "%confirm%"=="y" exit
if /i "%confirm%"=="n" goto main_menu
