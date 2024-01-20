@rem ----[ This code block detects if the script is being running with admin PRIVILEGES If it isn't it pauses and then quits]-------
@title Windows 10 LTAC v1.2
@color 9
@echo OFF
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected!
    ping localhost -n 2 >nul
    cls	
) ELSE (
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
   echo If you're seeing this after clicking on a start menu icon, then right click on the shortcut and select "Run As Administrator".
   echo ##########################################################
   echo.
   PAUSE
   EXIT /B 1
)
@echo off
title Windows 10 LTAC v1.2
echo Windows 10 LTSC-LTSB Activator Tool v1.2 by crouch86
ping localhost -n 3 >nul
cls
ping localhost -n 3 >nul
echo Please Wait..
slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
slmgr /skms kms8.msguides.com
slmgr.vbs /ato
cls
ping localhost -n 2 >nul
echo Windows 10 LTSC-LTSB Activated!
ping localhost -n 2 >nul
