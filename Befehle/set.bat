@echo off
REM Ausgabe aller Variablen
REM INFO: https://ss64.com/nt/set.html

set demo=3

REM Ausgabe aller Variablen
	if %demo%==1 (
		echo AUSGABE ALLER UMGEBUNGS-VARIABLEN
		set
		echo.
	)

REM Ausgabe aller mit prefix vorhandene Variablen	
	if %demo%==2 (
		REM aller Variablen mit Anfangsbuchstaben p
		echo AUSGABE ALLER UMGEBUNGS-VARIABLEN mit Anfangsbuchstaben p
		set p
		echo.
	)
REM Ausgabe in eine Textdatei
	if %demo%==3 (
		REM Ausgabe aller Variablen
		echo Ausgabe in Datei schreiben
		set p > c:/temp_creo/infos.txt
	)
REM Ausgabe aller Variablen mit Ausnahme
		if %demo%==4 (
			REM Ausgabe aller Variablen
			echo Ausgabe aller Variablen, welche nicht mit prefix p sind
		set p > c:/temp_creo/infos.txt
	)
	
pause