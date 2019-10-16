@echo off
setlocal EnableDelayedExpansion
@mode con cols=150 lines=60
REM gespeicherter Parameter aus Textfile lesen und setzen
REM Textfile: E:\_DOKUMENTE\BAT oder CMD-Beispiele\Beispiele\textfile_zeilenweise_auslesen_variablen.bat
REM Parameternamen: textfile_zeilenweise_auslesen_variablen
set "filelesen=E:\_DOKUMENTE\BAT oder CMD-Beispiele\Beispiele\Parameter_in_textfile_parameter.txt"
set "fileschreiben=E:\_DOKUMENTE\BAT oder CMD-Beispiele\Beispiele\Parameter_in_textfile_parameter_schreiben.txt"

set demo=2

REM Demo 1 = einlesen eines Wertes
if !demo!==1 (
	set /p Parameter_aus_textfile=<!filelesen!
	echo.
	echo Werte aus txt File einlesen und an Variable uebergeben
	echo Parameter_aus_textfile:::!Parameter_aus_textfile!::ENDE::
	echo.
)
if !demo!==2 (
    echo Datei: !fileschreiben!
	echo Parameter_in_textfile_wert2> !fileschreiben!
	echo.
	echo Werte in txt File geschrieben
	echo.
)

echo demo:!demo!::
pause