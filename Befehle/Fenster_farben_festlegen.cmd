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
color C0
echo Farbe zur Laufzeit ändern
pause
color e0
pause
color A0
pause