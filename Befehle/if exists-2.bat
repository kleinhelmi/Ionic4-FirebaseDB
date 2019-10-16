@echo off
REM Variable Prüfen ob gesetzt
set pfad=
IF "%pfad%" equ "" (
echo " - NICHT vorhanden"
) ELSE (
	echo %pfad% " - vorhanden"
)
pause

REM Auf Datei vorhanden prüfen
set datei=c:\temp\my.log
IF exist %datei% (
	echo %datei% "- vorhanden"
) ELSE (
	echo %datei% "- NICHT vorhanden"
)
pause
REM VERZECHNIS Prüfen
set datei=c:\temmmp\
IF exist %datei% (
	echo %datei% "- vorhanden"
) ELSE (
	echo %datei% "-NICHT vorhanden"
)
pause

REM Laufwerk Prüfen
set datei=z:\
IF exist %datei% (
	echo %datei% "- vorhanden"
) ELSE (
	echo %datei% "-NICHT vorhanden"
)
pause

