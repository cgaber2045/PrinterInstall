@echo off
title Better Printer Installer by Chris Gaber
color f9

:setup
SET /P room=Enter Room Number, type 'Help', type 'Setup', or type 'Quit':

if /I %room% ==quit (goto :end)
if /I %room% ==setup (goto :basic)
if /I %room% ==help (goto :help)

if %room% LEQ 999 (start \\013h-fs01\013h-pi-00%room%01 2>nul) else (start \\013h-fs01\013h-pi-0%room%01 2>nul)
if %ERRORLEVEL% ==9059 (echo ERROR: Room number is not valid!) else (echo Operation Successful!)
ver > nul
pause
cls
goto setup

:basic
start \\013h-fs01\013h-PI-0080701 2>nul
start \\013h-fs01\013H-PI-0081801 2>nul
start \\013h-fs01\013h-PI-0081301 2>nul
start \\013h-fs01\013H-PI-0081601 2>nul
start \\013h-fs01\013h-PI-0081701 2>nul
start \\013h-fs01\013H-PI-0080901 2>nul
start \\013h-fs01\013h-PI-0081101 2>nul
start \\013h-fs01\013H-PI-0081401 2>nul
start \\013h-fs01\013h-PI-0081201 2>nul
start \\013h-fs01\013H-PI-0081001 2>nul
start \\013h-fs01\013h-PI-0080801 2>nul
start \\013h-fs01\013H-PI-MEDIA02 2>nul

if %ERRORLEVEL% ==9059 (echo Room number is not valid!)
ver > nul
goto setup

:help
echo.
echo =======HELP=======
echo -You can enter the number of any room in the school to add its printer.
echo -You can also initiate a basic setup of all newtech classrooms.
echo -Quit is used to exit the program.
echo.
pause
cls
goto setup

:end