@echo off
REM Variable Pr�fen ob gesetzt
set pfad=
IF "%pfad%" equ "" (
echo " - NICHT vorhanden"
) ELSE (
	echo %pfad% " - vorhanden"
)
pause

REM Auf Datei vorhanden pr�fen
set datei=c:\temp\my.log
IF exist %datei% (
	echo %datei% "- vorhanden"
) ELSE (
	echo %datei% "- NICHT vorhanden"
)
pause
REM VERZECHNIS Pr�fen
set datei=c:\temmmp\
IF exist %datei% (
	echo %datei% "- vorhanden"
) ELSE (
	echo %datei% "-NICHT vorhanden"
)
pause

REM Laufwerk Pr�fen
set datei=z:\
IF exist %datei% (
	echo %datei% "- vorhanden"
) ELSE (
	echo %datei% "-NICHT vorhanden"
)
pause

