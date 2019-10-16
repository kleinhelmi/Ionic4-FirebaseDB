@echo off
Title Befehl "Tree" um den Verzeichnisbaum anzuzeigen
color 0A
REM setlocal EnableDelayedExpansion
REM ****************************************************************

REM Info: https://ss64.com/nt/dir.html
set _verz=c:\temp_creo\ADMIN.pro\
set log=C:\temp_creo\dir_1.txt

echo.
echo Ausgabe Folder and Files
dir %_verz% /P /S /A:-S
REM in Datei schreiben
dir %_verz% /P /S /A:-S > %log%

Pause
cls
echo.
echo Ausgabe nur FoLDER
echo. >> %log%
echo. >> %log%
echo. >> %log%
echo. Ausgabe nur Folder >> %log%

dir %_verz% /P /S /A:D
REM in Datei schreiben
dir %_verz%  /P /A:D >> %log%

pause
cls
echo.
Echo Ausgabe keine Folder entspricht nur Files
echo. >> %log%
echo. >> %log%
echo. >> %log%
echo. Ausgabe keine Folder entspricht nur Files >> %log%
dir %_verz% /P /A:-D /B
dir %_verz% /P /A:-D /B >> %log%
pause
