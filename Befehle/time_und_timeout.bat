@echo off
REM ****************************************************************
REM *  info damit beim z.B. beim Kopieren von Dateien im Inhalt die Umlaute nicht verändert werden
REM entweder in der .bat die zeichentabelle umstellen
REM oder
REM	die Dateien in der ANSI Codierung speichern.

REM AUSGABE der Konsole werden trotzdem keine Umlaute angezeigt

REM Zeichentabelle mit Umlauten
REM 

@echo off


echo Zeit: %time%
echo Zeit2: %time:~0,5%

echo SCHLAFEN
timeout /T 10

echo Zeit: %time%

pause