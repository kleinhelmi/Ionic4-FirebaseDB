@echo off
Title Befehl "Tree" um den Verzeichnisbaum anzuzeigen
color 0A
REM setlocal EnableDelayedExpansion
REM ****************************************************************

REM Info: https://ss64.com/nt/dir.html

echo.
set _verz=c:\temp_creo\ADMIN.pro\
echo Ausgabe Ordner: %_verz%

FOR /f "tokens=*" %%G IN ('dir %_verz%*.* ^| find "."') DO echo %%G

Pause
