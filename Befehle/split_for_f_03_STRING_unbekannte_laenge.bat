@echo off 
setlocal EnableDelayedExpansion
REM CODEBEISPIEL und Infos:
REM  https://stackoverflow.com/questions/1707058/how-to-split-a-string-in-a-windows-batch-file

REM als Trennungszeichen werden Leerzeichen, Semikolon, Kommas ... erkannt
set "Zeichenkette=AAA;BBB,b,CCC DDD EEE FFF micha paul"
set x=0
for %%a in (%Zeichenkette%) do (
	echo %%a
	set /a "x+=1"
	echo !x!
	call set module_!x!=%%a
	echo module_0: %module_0%
	echo %module_!x!%
	echo.
)
echo.
echo Nach Schleife
echo !x!
echo module_0: !module_0!
pause
