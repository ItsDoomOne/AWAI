@echo off
chcp 65001 > nul
color 02	
title AspectOS Winget App Installer
set runpath=%~dp0
set runpath=%runpath:~0,-1%
setx awai "%runpath%\installawai.ps1"

:bootstrapper
color 02
cls
echo Welcome to the AspectOS Winget App Installer.
echo.
echo Press 1 for manual install using package names.
echo Press 2 for usage of AWAI file.
echo Press 3 for exiting.
echo.

set /p variableselect1="Option chosen: "
if "%variableselect1%"=="1" goto vase1x1
if "%variableselect1%"=="2" goto vase1x2
if "%variableselect1%"=="3" exit
if "%variableselect1%"=="debugmenu" goto debug

:error
cls
echo Error! Input is invalid. Program will restart in 5 seconds.
timeout /t 1 /nobreak > nul
cls
echo Error! Input is invalid. Program will restart in 4 seconds.
timeout /t 1 /nobreak > nul
cls
echo Error! Input is invalid. Program will restart in 3 seconds.
timeout /t 1 /nobreak > nul
cls
echo Error! Input is invalid. Program will restart in 2 seconds.
timeout /t 1 /nobreak > nul
cls
echo Error! Input is invalid. Program will restart in 1 seconds.
timeout /t 1 /nobreak > nul
cls
goto bootstrapper


:vase1x1
cls
echo Welcome to the AspectOS Winget App Installer.
echo.
echo If you don't know, you just input the same of the packages you want
echo like Google Chrome is translated to Google.Chrome.
echo .
echo You CAN'T specify versions.
echo.
set /p variableselect2="Option chosen: "
setx variableselect2x "%variableselect2%"
Powershell.exe -executionpolicy remotesigned -File "%runpath%\install.ps1"
echo.
echo Do you want to install any other apps? Y/N
set /p variableselect3="Option chosen: "
if "%variableselect3%"=="y" (goto variableselect1x1)
if "%variableselect3%"=="n" (goto bootstrapper)
if "%variableselect3%"=="Y" (goto variableselect1x1)
if "%variableselect3%"=="N" (goto bootstrapper)

:vase1x2
cls
echo Welcome to the AspectOS Winget App Installer's AWAI installer tool.
echo.
echo If you don't know, AWAI stands for AspectOS Winget App Installer.
echo Those files are used for quick install of multiple applications.
echo .
echo Enter the path to the AWAI file.
echo.
set /p variableselect4="Location: "
setx inputawai "%variableselect4%" > nul
Powershell.exe -executionpolicy remotesigned -File "%runpath%\installawai.ps1"
echo Do you want to install any other awai files? Y/N
set /p variableselectlast="Option chosen: "
if "%variableselectlast%"=="y" (goto vase1x2)
if "%variableselectlast%"=="n" (goto bootstrapper)
if "%variableselectlast%"=="Y" (goto vase1x2)
if "%variableselectlast%"=="N" (goto bootstrapper)


:debug
cls
Echo This is the backrooms.
echo.
echo DM Doom about this, you will get a surprise.
echo.
echo Well, you cant do any things here.
echo.
pause > nul
exit
