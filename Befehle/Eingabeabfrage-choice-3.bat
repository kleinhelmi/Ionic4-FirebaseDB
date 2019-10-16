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
REM	@CHOICE /C:123abq /D:3 /T:10 /M:"Option waehlen: "

echo ohne Eingabe wird in 10 Sekunden Creo nicht gestartet! 
@CHOICE /C:jn /D:n /T:10 /M:"Creo Starten (J)a, (N)ein: "



IF ERRORLEVEL 2 GOTO end
IF ERRORLEVEL 1 GOTO 1

:1
ECHO Deine Auswahl "1"!
timeout /T 5
:end
echo Script beenden
timeout /T 10
exit

