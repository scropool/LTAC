@echo off
title LTAC v1.4 by crouch86
color 9

rem ----[ Administrator Control ]----
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ######## ########  ########   #######  ########  
    echo ##       ##     ## ##     ## ##     ## ##     ## 
    echo ##       ##     ## ##     ## ##     ## ##     ## 
    echo ######   ########  ########  ##     ## ########  
    echo ##       ##   ##   ##   ##   ##     ## ##   ##   
    echo ##       ##    ##  ##    ##  ##     ## ##    ##  
    echo ######## ##     ## ##     ##  #######  ##     ## 
    echo.
    echo.
    echo ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
    echo This script must be run as administrator to work properly!
    echo ##########################################################
    echo.
    pause
    exit /B 1
)

rem ----[ Activation Waiting ]----
echo Please Wait..
ping localhost -n 3 >nul

rem ---[ Setting Key ]---
slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
if %errorlevel% neq 0 (
    echo An error occurred while setting the key!
    pause
    exit /B 1
)

rem ---[ Setting KMS Server ]---
slmgr /skms kms.digiboy.ir  
if %errorlevel% neq 0 (
    echo An error occurred while setting up the KMS server!
    pause
    exit /B 1
)

rem ---[ Activation ]---
slmgr.vbs /ato
if %errorlevel% neq 0 (
    echo The activation process failed!
    pause
    exit /B 1
)

cls
ping localhost -n 2 >nul
echo Activation was successfully completed!
ping localhost -n 2 >nul
