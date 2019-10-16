@echo off
REM ****************************************************************
REM *  info damit beim z.B. beim Kopieren von Dateien im Inhalt die Umlaute nicht verändert werden
REM entweder in der .bat die zeichentabelle umstellen
REM oder
REM	die Dateien in der ANSI Codierung speichern.

REM AUSGABE der Konsole werden trotzdem keine Umlaute angezeigt

REM Zeichentabelle mit Umlauten
chcp 1252
REM 

@echo off

echo Schön ist der Überlauf und die Abfälle

echo Zeit: %time%
echo Datum: %date%

echo SCHLAFEN
sleep 1000

echo Zeit: %time%
echo Datum: %date%

echo SCHLAFEN
pause