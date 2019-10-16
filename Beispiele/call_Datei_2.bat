@echo off
setlocal EnableDelayedExpansion

REM These variables must be set to use Tolerance Manager
set TM_HOME=C:\Program Files\PCO Innovation\Tolerance Manager PE 3.0.6\
set TM_CONFIG_FILE=%TM_HOME%tm\start\config.PE.tm

REM echo "DAs ist die zweite Datei"
echo Datei 2 - TM_Home : %TM_HOME%
echo Datei 2 - TM_CONFIG_FILE : %TM_CONFIG_FILE%



timeout /T 3