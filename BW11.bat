
@echo off
title BW11
mode 80,25
color 07
 
REM Author: Haitham Aouati
REM GitHub: https://github.com/haithamaouati
REM Bypass Windows 11 system requirements
 
setlocal
 
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
cls
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
echo  BW11 by Haitham Aouati
echo.
echo Main menu:
echo 1. Bypass Windows 11 system requirements
echo 2. Exit the program
echo.
 
set "choice="
set /p choice=Enter your choice: 
 
if "%choice%"=="1" goto bypass_menu
if "%choice%"=="2" goto end
 
echo Invalid choice. Please try again.
pause
goto main_menu
 
:bypass_menu
cls
echo This section allows you to bypass various checks.
echo 1. Bypass CPU Check
echo 2. Bypass Storage Check
echo 3. Bypass RAM Check
echo 4. Bypass TPM Check
echo 5. Bypass SecureBoot Check
echo 6. Allow Upgrade With Unsupported TPM or CPU
echo 7. Bypass Internet connection and Microsoft account
echo 8. Apply ALL bypasses
echo 9. View current LabConfig status
echo 0. Back to main menu
echo.
 
set "subchoice="
set /p subchoice=Enter your choice: 
 
if "%subchoice%"=="1" call :apply_key BypassCPUCheck & goto bypass_menu
if "%subchoice%"=="2" call :apply_key BypassStorageCheck & goto bypass_menu
if "%subchoice%"=="3" call :apply_key BypassRAMCheck & goto bypass_menu
if "%subchoice%"=="4" call :apply_key BypassTPMCheck & goto bypass_menu
if "%subchoice%"=="5" call :apply_key BypassSecureBootCheck & goto bypass_menu
if "%subchoice%"=="6" call :apply_mosetup_key & goto bypass_menu
if "%subchoice%"=="7" call :apply_nro_keys & goto bypass_menu
if "%subchoice%"=="8" call :apply_all & goto bypass_menu
if "%subchoice%"=="9" call :view_status & goto bypass_menu
if "%subchoice%"=="0" goto main_menu
 
echo Invalid choice. Please try again.
pause
goto bypass_menu
 
:apply_key
REG ADD HKLM\SYSTEM\Setup\LabConfig /v %1 /f /t REG_DWORD /d 1
if %errorlevel% neq 0 (
    echo Failed to add %1.
) else (
    echo %1 added successfully.
)
pause
exit /b
 
:apply_mosetup_key
REG ADD HKLM\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /f /t REG_DWORD /d 1
if %errorlevel% neq 0 (
    echo Failed to add AllowUpgradesWithUnsupportedTPMOrCPU.
) else (
    echo AllowUpgradesWithUnsupportedTPMOrCPU added successfully.
)
pause
exit /b
 
:apply_nro_keys
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassNRO /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v OOBEBypassNRO /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassMSARequirement /f /t REG_DWORD /d 1
if %errorlevel% neq 0 (
    echo One or more keys failed to add.
) else (
    echo NRO / Microsoft account bypass keys added successfully.
)
pause
exit /b
 
:apply_all
echo Adding keys to bypass various checks...
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassCPUCheck /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassStorageCheck /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassRAMCheck /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassTPMCheck /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassNRO /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v OOBEBypassNRO /f /t REG_DWORD /d 1
REG ADD HKLM\SYSTEM\Setup\LabConfig /v BypassMSARequirement /f /t REG_DWORD /d 1
 
if %errorlevel% neq 0 (
    echo One or more registry keys failed to apply.
) else (
    echo All keys added successfully.
    echo Requirements bypassed successfully.
    echo.
    echo Now go back to the previous stage and then proceed to the next stage.
    echo You should no longer see the "Unsupported" message anymore.
)
pause
exit /b
 
:view_status
echo Current LabConfig values:
REG QUERY HKLM\SYSTEM\Setup\LabConfig 2>nul
if %errorlevel% neq 0 echo LabConfig key does not exist yet.
echo.
echo Current MoSetup values:
REG QUERY HKLM\SYSTEM\Setup\MoSetup 2>nul
if %errorlevel% neq 0 echo MoSetup key does not exist yet.
pause
exit /b
 
:end
echo Are you sure you want to exit the script? (y/n)
set "confirm="
set /p confirm=
if /i "%confirm%"=="y" exit
if /i "%confirm%"=="n" goto main_menu
 
echo Invalid input.
goto end
