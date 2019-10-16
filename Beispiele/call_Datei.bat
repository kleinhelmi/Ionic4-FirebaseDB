@echo off
setlocal EnableDelayedExpansion

REM mehrere Aufrufe in dieser Demo enthalten, mit der demo variablen kann diese Direkt angesprungen werden

set demo=3
set file2="E:\_DOKUMENTE\BAT oder CMD-Beispiele\Beispiele\call_Datei_2.bat"
set file3="E:\_DOKUMENTE\BAT oder CMD-Beispiele\Beispiele\call_Datei_3.bat"
echo file::!file!::

REM externe Datei aufrufen um Parameter zu erhalten
if %demo%==1 (
	call !file2!

	echo Datei 0 - TM_Home : %TM_HOME%
	echo Datei 0 - TM_CONFIG_FILE : %TM_CONFIG_FILE%

	pause
)
REM ENDE DEMO 1

if %demo%==2 (
	REM Externe Datei mit Parameter aufrufen
	set TOOL[0]=Variable_0
	set TOOL[1]=Variable_1
	set TOOL[2]=
	set TOOL[3]=Variable_3
	set TOOL[4]=Variable_4
	set TOOL[5]=Variable_5
	set TOOL[6]=Variable_6
	set TOOL[7]=Variable_7
	set TOOL[8]=
	set TOOL[9]=
	
	
	set "module=!TOOL[0]! !TOOL[1]! !TOOL[2]! !TOOL[3]! !TOOL[4]! !TOOL[5]! !TOOL[6]! !TOOL[7]! !TOOL[8]!"
	
	call !file3! !module!

	echo +++++++++++++++++++++++++++++++++
	echo Zurueck in Datei: %0
	echo +++++++++++++++++++++++++++++++++

	pause
)
REM ENDE DEMO 2

