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
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Windows 11\Update" /v CPUCheck /t REG_SZ /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Windows 11\Update" /v StorageCheck /t REG_SZ /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Windows 11\Update" /v RAMCheck /t REG_SZ /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Windows 11\Update" /v TPMCheck /t REG_SZ /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Windows 11\Update" /v SecureBootCheck /t REG_SZ /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Windows 11\Update" /v UnsupportedTPMorCPU /t REG_SZ /d 0 /f

echo Keys added successfully.
pause
goto main_menu

:end
echo Are you sure you want to exit the script? (y/n)
set /p confirm=
if /i "%confirm%"=="y" exit
if /i "%confirm%"=="n" goto main_menu
