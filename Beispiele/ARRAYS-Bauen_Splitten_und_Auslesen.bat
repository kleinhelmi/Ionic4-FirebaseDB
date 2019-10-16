@echo off
setlocal EnableDelayedExpansion
REM Infos zu Arrays: 
set "storage=default"
set "CREO_ADMIN_Apps=ADMIN1#ALLE_Mapkeys#CREO_ADMIN_Apps"
set "CREO_USER_APPS=USER-1#USER#-2#USER3"

set Zeichenkette="%storage%#%CREO_ADMIN_Apps%#%CREO_USER_APPS%"
set x=0


echo zeichenkette: %Zeichenkette%
:FORLOOP
For /F "tokens=1* delims=#" %%A IN (%Zeichenkette%) DO (
	echo %%A
	
	
	echo VARIABLE X: !x!
	
	
	REM Array ähnliches Objet bauen
	set ARRAY_!x!=%%A
	echo ARRAY_ Index no !x! ist %ARRAY_!x!%
	
	REM den Index für das ARRAY hochzählen
	set /a "x+=1"
	
	REM Die Variable ZEICHENKETTE wird auf den 2ten Eintrag abgefragt
	REM Die Variable Verkürzt sich immer um den gefundene a Eintrag
    set Zeichenkette="%%B"
	echo Zeichenkette nach durchlauf: !Zeichenkette!
    if NOT "%Zeichenkette%"=="" goto FORLOOP
)
pause 
echo.
echo Ausgabe des Arrays
REM Ausgabe des Arrays
(for /L %%i in (0,1,!x!) do (
   echo Array_%%i :: !ARRAY_%%i!
))



:endofprogram
pause