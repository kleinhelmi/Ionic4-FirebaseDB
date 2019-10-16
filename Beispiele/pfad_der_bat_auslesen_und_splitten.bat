@echo off
setlocal

REM	Beispiel den Verzeichnispfad aus der Aktuellen bat auslesen und zerteilen 

Set "path_file=C:\verz1\Verz2\Verz 3a und 3b\Verz4\file.txt" 


	REM Variablen Dir1...dir50 löschen 8falls vorhanden) 

	For /L %%i in (1,1,50) do (
		set "dir%%i=" 
	echo PFAD: %%i	
	)
echo Stop 1
pause
	REM aufruf eines Unter PGMs
	call :PfadInVarPacker "%path_file%" 


	setlocal enabledelayedexpansion 


	For /L %%i in (1,1,50) do (
		if defined !dir%%i! do (
			echo dir%%i ist !dir!%%i 
		)
	)
	setlocal enabledelayedexpansion 

	REM hier ist der PGM ABlauf fertig
echo Stop 2
pause

:goto :eof 


::PfadInVarPacker paramter %1 ist lw/pfad-Zeichenfolge in Anführungszeichen 
:PfadInVarPacker
setlocal enabledelayedexpansion 

set "DFD=%~1"  

For %%i in ("%DFD:\=" "%") do  

     set /a "ffh+=1"  
     set "Dir!ffh!=%%~i" 

setlocal disabledelayedexpansion 
echo Stop 3
pause
goto :eof
