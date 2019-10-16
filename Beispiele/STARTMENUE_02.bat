@echo off
REM ****************************************************************
REM * Eingabe Abfrage ohne mit ENTER die Eingabe best�tigen zu m�ssen
REM * CHOICE Befehl
REM * 
REM ****************************************************************

REM Damit Variablen zur Laufzeit berechnet werden können
REM die Variable muss dann mit !VARIABLE! statt %VARIABLE% definiert werden.
REM Für eine gute Besschreibung siehe: 
REM http://ss64.com/nt/delayedexpansion.html
Setlocal EnableDelayedExpansion

REM Titel und Backgroundfarbe des Fenster einstellen
Title NAME der Batchdatei
REM color[font][background]
REM mit dem Befehl color list in der Eingabeaufforderung kann der Farbcode abgefragt werden
REM color list
color 4b
REM Consolenfenster Gr��e Bestimmen
@mode con cols=250 lines=100

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
:setup
set mark_on=X
set mark_off=-
REM Anzahl Optionen = o 
set o=5


set option1=%mark_off%
set option2=%mark_off%
set option3=%mark_off%
set option4=%mark_off%
set option5=%mark_off%

:anfangx

cls
echo        KEY   I  seleced      I   Option
echo -------------------------------------------------
echo        1:    I   %option1%       I   Option 1
echo        2:    I   %option2%       I   Option 2
echo        3:    I   %option3%       I   Option 3
echo        4:    I   %option4%       I   Option 4
echo        5:    I   %option5%       I   Option 5
echo.
echo    X: Starting with selected configuration

echo.
@CHOICE /C:12345X /M:"Markieren Sie Ihre Auswahl"
IF ERRORLEVEL 6 goto zeigen
IF ERRORLEVEL 5 set option5=%option5%%mark_on%
IF ERRORLEVEL 4 set option4=%option4%%mark_on%
IF ERRORLEVEL 3 set option3=%option3%%mark_on%
IF ERRORLEVEL 2 set option2=%option2%%mark_on%
IF ERRORLEVEL 1 set option1=%option1%%mark_on%

REM	fals eine Abfrage nicht abgefangen wurde, laeuft die Schleife weiter
echo nach ERRORLEVEL!

REM Zählschleifen
REM Mit solchen Schleifen kann man Aktionen eine bestimmte Anzahl oft ausführen. Dazu muss man den Parameter /L angeben.
REM Syntax: 				:for /L {Variable} IN (Startzahl, Schrittweite, Endzahl) DO (Aktion)
REM REM Schreibe Text 5 Mal	:for /L %%N IN (1, 1, 5) DO echo Nummer %%N
set option=option
set i=0
set check=was
for /L %%N IN (1, 1, %o%) DO (
	set /a i=!i! +1
	echo Option: !option!!i!
	echo Nummer %%N
	
	echo check: !check!
	set check2 = !check!
	echo check2:  !check2!
)


pause
	IF  %option1%==%mark_off%%mark_on% (
		set option1=%mark_on%
	) ELSE (
		set option1=%mark_off%
	)
	echo Optionen Inhalt: %option1%



:1
	IF  %option1%==%mark_off%%mark_on% (
		set option1=%mark_on%
	) ELSE (
		set option1=%mark_off%
	)
	echo Optionen Inhalt: %option1%


goto anfang


:output
echo Ihre Auswahl: %auswahl%
 goto anfang
 
:zeigen
echo ZEIGEN der Einstellungen
:end
@PAUSE
