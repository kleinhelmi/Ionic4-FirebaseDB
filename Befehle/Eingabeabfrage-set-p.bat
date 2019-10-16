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
echo Bitte geben Sie 1 oder a ein und bestaetigen Sie mit ENTER
set /p input= " EINGABE MACHEN!: "

echo.
echo input: "%input%"

REM Verzweigung
if %input% == 1 goto 1
REM alternative Scheibweise für mehrere Befehlszeilen
REM das Leerzeichen Zwischen dem Prüfausdruck und der Klammer ist entscheidend!
if %input% == a (
goto a
)

REM zur Absicherung kann auch eine " ELSE" anweisung für alle anderen Eingaben eingebaut werden!
:False
goto ENDE



:ENDE
echo Das Programm wird beendet!
REM Das PGM wird angehalten, bis eine Taste gedrückt wird
REM PAUSE ohne weiter mit beliebiger Taste 
REM pause > nul
pause
exit

:1
echo Sie haben 1 eingegeben!
goto anfang

:a
echo sie haben a eingegeben!
echo PGM Teil B nach Eingabe von 2 wird ausgeführt
echo was passiert falls keine Sprung zum Ende gesetzt wird
echo hier wird noch ein Fensterclear befehl gesetzt
pause 
goto ende