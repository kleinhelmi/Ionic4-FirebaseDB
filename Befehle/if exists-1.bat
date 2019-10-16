@echo off
REM Logfile definieren
set logfile="c:\temp_creo\CreoStart.log"
REM Logfile NEU erstellen, oder leeren. Falls noch nicht vorhanden wird es erstellt
REM IF exist %logfile% echo.>%logfile%
REM Log datei leeren
if 1==2 ( echo. NEUER Inhalt>%logfile%
) else (
	echo. 1. Zeile dazu>>%logfile%
	echo. 2. Zeile dazu >>%logfile%
	echo. 3. Logtime: %LOGTIME% >>%logfile%
	echo. 3. Date: %DATE% >>%logfile%
	echo. 3. Time: %TIME% >>%logfile%
	echo. 3. USERNAME: %USERNAME% >>%logfile%
) 
pause