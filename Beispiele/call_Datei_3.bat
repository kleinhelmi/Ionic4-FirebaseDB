@echo off
setlocal EnableDelayedExpansion
REM Testdatei mit Übergabe von Variablen beim aufruf, diese werden in Zahlenvariablen erhalten

REM die Übergabe ist auf max. 9 Elemente begrenzt!
REM direkte ausgabe
echo 0: %0  -immer der Dateiname-
echo 1: %1
echo 2: %2
echo 3: %3
echo 4: %4
echo 5: %5
echo 6: %6
echo 7: %7
echo 8: %8
echo 9: %9


REM
REM Schleife zur Ausgabe
REM Inputs in Array schreiben

if not [%1]==[] set MODUL[1]=%1 & echo Variable 1 in MODUL[1] uebernommen
if not [%2]==[] set MODUL[2]=%2 & echo Variable 2 in MODUL[2] uebernommen
if not [%3]==[] set MODUL[3]=%3 & echo Variable 3 in MODUL[3] uebernommen
if not [%4]==[] set MODUL[4]=%4 & echo Variable 4 in MODUL[4] uebernommen
if not [%5]==[] set MODUL[5]=%5 & echo Variable 5 in MODUL[5] uebernommen
if not [%6]==[] set MODUL[6]=%6 & echo Variable 6 in MODUL[6] uebernommen
if not [%7]==[] set MODUL[7]=%7 & echo Variable 7 in MODUL[7] uebernommen
if not [%8]==[] set MODUL[8]=%8 & echo Variable 8 in MODUL[8] uebernommen
if not [%9]==[] set MODUL[9]=%9 & echo Variable 9 in MODUL[9] uebernommen

echo Ende uebertrage der Variablen in Array
echo.
REM Schleife zur Ausgabe
set "x=1" 
:SymLoop 

	if defined MODUL[!x!] ( 
	   call echo Variable MODULE[!x!] : %%MODUL[!x!]%% 
	   set /a "x+=1"
	   GOTO :SymLoop 
	)
	
echo "The length of the array is" %x%

pause



echo.
echo Ausgabe Ende Datei: %0
pause