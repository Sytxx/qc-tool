@echo off
REM : Project ini dibuat untuk memenuhi kebutuhan, dan project ini open source.

:::::::::::::::::::::::::::::::::::::::::::::::::::

if not exist "./requirement" goto norequirement
cd sytx

:menuawal
chcp 65001 >nul 2>&1
cls
set choice=
set /p choice=Your choice:
