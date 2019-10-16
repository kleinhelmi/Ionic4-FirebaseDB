@echo off
REM ****************************************************************
REM * Eingabe Abfrage ohne mit ENTER die Eingabe best�tigen zu m�ssen
REM * CHOICE Befehl
REM * 
REM ****************************************************************

REM Titel und Backgroundfarbe des Fenster einstellen
Title NAME der Batchdatei
@mode con cols=120 lines=60
color 0A


:anfang
REM Befehlserklaerung: https://en.wikipedia.org/wiki/Choice_(command)
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
REM automatische Auswahl MENÜPUNKT 3 nach 10 Sekunden
@CHOICE /C:123abq /D:3 /T:10 /M:"Option waehlen: "

IF ERRORLEVEL 6 GOTO end
IF ERRORLEVEL 5 GOTO b
IF ERRORLEVEL 4 GOTO a
IF ERRORLEVEL 3 GOTO 3
IF ERRORLEVEL 2 GOTO 2
IF ERRORLEVEL 1 GOTO 1

:1
ECHO Deine Auswahl "1"!
GOTO anfang
:2
ECHO Deine Auswahl "2"!
GOTO anfang
:3
ECHO Deine Auswahl "3"!
GOTO anfang
:a
ECHO Deine Auswahl "a"!
GOTO anfang
:b
ECHO Deine Auswahl "b"!
GOTO anfang

:end
exit
@PAUSE
