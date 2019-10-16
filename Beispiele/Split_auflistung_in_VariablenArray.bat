@echo off
setlocal EnableDelayedExpansion
REM dieses Script soll aus einer ";" separierten Liste ein Array im Stil 
REM var[0]=text0
REM var[1]=text1
REM var[2]=text2
REM var[3]=text3
REM var[4]=text4
set "Storage=default"
set "Apps=text0/text1/text2/text3/text4"
set "Startparamter=startpar1/Startpar2"

:: Variablen var[0]....var[50] löschen falls vorhanden) 

For /L %%i in (1,1,50) do set "Module[%%i]=" 

set Modul[0]=%Storage%
set Modul[1]=%Modul[0]%/%Apps%/%Startparamter%

@echo off
 SET count=1
 FOR /f "tokens=*" %%G IN ('dir /b') DO (call :subroutine "%%G")
 GOTO :eof

 :subroutine
  echo %count%:%1
  set /a count+=1
  GOTO :eof






:eof
exit
set n=0
REM Werte aus Module[1] mit Trennzeichen ";" trennen
	For /f "delims=/ tokens=1-10" %%i in ("%Modul[1]%") do ( 
		  Set App[!n!]=%%i
		  set /A n+=1
		  echo n: !n!
		  echo App: !App[%n%]!
		  echo.
	) 





pause
pause
REM Apps in ARRAY bringen
set n=0
for %%a in (%Apps%) do (
   set App[!n!]=%%a
   set /A n+=1
	)


pause

REM AUsgabe

for /L %%i in (0,1,50) do (
		if [!App[%%i]!==] (
REM			echo Variable leer
		) else (
		   echo App[%%i] : !App[%%i]!
		   echo ---
		   echo.
	   )
   )
pause