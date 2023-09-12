@echo off
REM : Project ini dibuat untuk memenuhi kebutuhan, dan project ini open source.

REM : Jangan diubah code dibawah ini, nanti error.
 
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
if not exist "./requirement" goto norequirement
cd sytx

::::::::::::::::::::::::::::::::::::::::::::::::::::

:menuawal
chcp 65001 >nul 2>&1
cls
set choice=
set /p choice=Your choice: %COL%[35m
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'==' goto spek
if '%choice%'==' goto wifilist
if '%choice%'==' goto qcapp
REM : MORE OPTION COMING SOON
echo.
echo '%choice%' is not available.
goto menuawal.
cls && echo this option is available, please try again. && goto menuawal

:spek
cls && start spek.bat && echo spek bat succesfully open && timeout /t 2 > null && goto menuawal

:wifilist
cls && start wifilist.bat && echo wifilist succesfully open && timeout /t 2 > null && goto menuawal

:qcapp
cls && start qcapp.bat && echo qcapp succesfully open && timeout /t 2 > null && goto menuawal
