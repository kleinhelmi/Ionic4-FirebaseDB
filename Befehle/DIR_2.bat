@echo off
Title Befehl "Tree" um den Verzeichnisbaum anzuzeigen
color 0A
REM setlocal EnableDelayedExpansion
REM ****************************************************************

REM Info: https://ss64.com/nt/dir.html

echo.
set _verz=c:\temp_creo\ADMIN.pro\
set log=C:\temp_creo\dir_2.txt

echo Ausgabe Ordner: %_verz%
dir %_verz% /P /B /S /O:G
REM Ausgabe in txt Datei schreiben
dir %_verz% /P /B /S /O:G > %log%

pause

for %%A in ("%_verz%*") do (
	echo %%~fA
)
Pause

