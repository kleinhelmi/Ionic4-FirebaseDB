@echo off
REM ****************************************************************
REM Befehlsinfos: https://de.wikibooks.org/wiki/Batch-Programmierung:_Batch-Befehle
REM *
REM * Beispiel wie man auf Eingaben reagieren kann
REM * Demovideos:  
REM * https://www.youtube.com/watch?v=-9TfGW9pGoE
REM * https://www.youtube.com/watch?v=KXItZN5pdYU
REM ****************************************************************

REM Titel und Backgroundfarbe des Fenster einstellen
Title NAME der Batchdatei
color 4b
REM Consolenfenster Größe Bestimmen
@mode con cols=120 lines=60


REM Sprungpunkt
:anfang

REM Eingabeabfrage
echo.
echo Eingabe Startverzeichnis
echo Pfad einkopieren mit linker Maustaste oder mit[ENTER] Creo Start mit default Arbeitsverzeichnis
set /p input= " EINGABE MACHEN!: "
echo Ihre Eingabe: %input%
echo #########################
echo.

REM Anführungszeichen um die Variable verhindern Fehler bei leere Variabler!
REM If "%input%" == "" goto ende

REM +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
REM Prüfung ob der Pfad vorhanden ist? 
REM Anführungszeichen um die Variable verhindern Fehler bei leere Variabler!
IF exist "%input%" (
	echo %input% "- vorhanden"
) ELSE (
REM Eingabe kein Pfad
	echo Eingabe nicht erkannt oder kein Verzeichnis
	echo %input% "-NICHT vorhanden"
	echo Creo wird mit dem DEFAULT Arbeitsverzeichnis gestartet!
)
pause

:ende
echo Das Programm wird beendet!
REM Das PGM wird angehalten, bis eine Taste gedrückt wird
REM PAUSE ohne weiter mit beliebiger Taste 
REM pause > nul
pause