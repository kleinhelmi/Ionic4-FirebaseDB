@echo off
REM ****************************************************************
REM * Eingabe Abfrage ohne mit ENTER die Eingabe best�tigen zu m�ssen
REM * CHOICE Befehl
REM * 
REM ****************************************************************

REM Titel und Backgroundfarbe des Fenster einstellen
Title NAME der Batchdatei
REM color[font][background]
REM mit dem Befehl color list in der Eingabeaufforderung kann der Farbcode abgefragt werden
REM color list
color 4b
REM Consolenfenster Gr��e Bestimmen
@mode con cols=120 lines=60

REM ERKL�RUNG
REM CHOICE [/C [<Choice1><Choice2><�>]] [/N] [/CS] [/T <Timeout> /D <Choice>] [/M <"Text">]
REM 
REM Arguments:
REM /C[:]choices Specifies allowable keys. The default is "YN".
REM /T[:]nn This defaults choice to /D after "nn" seconds. Must be specified with default /D.
REM /D[:]c This defaults choice to 'c'.
REM /M text Specifies the prompt string to display.
REM 
REM Flags:
REM /N Specifies not to display the choices and "?" at end of prompt string.
REM /CS Specifies that choice keys should be treated as case sensitive.

REM Alle tasten führen zum weiterlaufen des SCriptes
:anfang
@ECHO off
@CHOICE /C:1234567890
IF ERRORLEVEL 5 set auswahl=5 && goto output
IF ERRORLEVEL 4 set auswahl=4 && goto output
IF ERRORLEVEL 3 set auswahl=3 && goto output
IF ERRORLEVEL 2 set auswahl=2
IF ERRORLEVEL 1 set auswahl=1


:output
echo Ihre Auswahl: %auswahl%
 goto anfang
:end
@PAUSE
