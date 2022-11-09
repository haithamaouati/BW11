@echo off
title Bypass Windows 11
mode 80,25
color 07
REM Bypass Windows 11 System Requirements
REM Author: Haitham Aouati
REM Contribution: Jory Aouati
REM Latest update: 08/11/2022
cls

goto :elevation

:elevation
net session >nul 2>&1
if %errorLevel% == 0 (
cls && goto :main
) else (
echo Run as administrator.
pause >nul && exit
)
goto :eof

:main
echo BypassWin11 - Bypass Windows 11 System Requirements
echo.
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo.
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo.
echo  Author: Haitham Aouati
echo  Repo: https://github.com/haithamaouati/BypassWin11
echo.
echo 1) Bypass Requirements
echo 2) System Information
echo.
echo 0) Exit
echo.
set /p input=Choice:
if %input% gtr 1 cls && goto :main
if %input% == 1 cls && goto :bypass
if %input% == 2 cls && goto :sysinfo
if %input% == 0 cls && goto :end
goto :eof

:bypass
echo Bypass Windows 11 System Requirements
echo.
echo  * Bypass CPU Check
echo  * Bypass Storage Check
echo  * Bypass RAM Check
echo  * Bypass TPM Check
echo  * Bypass SecureBoot Check
echo  * Allow Upgrade With Unsupported TPM or CPU
echo.
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassCPUCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassStorageCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassRAMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassTPMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /f /t REG_DWORD /d 00000001
echo Go back to previous back and then go to the next page to proceed.
echo The "Unsupported" screen should no longer appear and you can continue the installation.
echo.
pause && cls && goto :main
goto :eof

:sysinfo
echo System Information
echo.
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"OS Manufacturer" /C:"OS Configuration" /C:"OS Build Type" /C:"Original Install Date" /C:"System Boot Time" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Processor(s)" /C:"BIOS Version" /C:"Windows Directory" /C:"System Directory" /C:"Boot Device" /C:"System Locale" /C:"Input Locale" /C:"Total Physical Memory" /C:"Available Physical Memory" /C:"Virtual Memory: Max Size" /C:"Virtual Memory: Available" /C:"Virtual Memory: In Use" /C:"Domain" /C:"Network Card(s)"
echo.
pause && cls && goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof
