@echo off
REM Consolenfenster Größe Bestimmen
@mode con cols=200 lines=60

REM ****************************************************************
REM * Eingabe Abfrage ohne mit ENTER die Eingabe bestätigen zu müssen
REM * CHOICE Befehl
REM * 
REM ****************************************************************

REM Titel und Backgroundfarbe des Fenster einstellen
Title NAME der Batchdatei
REM color[background][font]
REM mit dem Befehl color list in der Eingabeaufforderung kann der Farbcode abgefragt werden
color list
echo Größe zur Laufzeit ändern
@mode con cols=50 lines=10
pause
@mode con cols=100 lines=30
pause
@mode con cols=150 lines=100
pause