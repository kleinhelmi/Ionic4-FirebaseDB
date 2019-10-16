REM info: http://ss64.com/nt/setlocal.html

REM setlocal um die Variablen innerhalb eines batch Prozess zu halten, um Interaktionen zwischen 2 Scripten zu verhindern

REM Testdatei erstelle, der das Problem Zeit
REM SCRIPT welches 3 SCRIPTE mit EINGABEN ausführt
REM 	SETLOCAL
REM 
REM 	Set options to control the visibility of environment variables in a batch file.
REM 
REM 	Syntax: SETLOCAL
REM 
REM 		  SETLOCAL {EnableDelayedExpansion | DisableDelayedExpansion}  {EnableExtensions | DisableExtensions}
REM 
REM 	Key
REM 	   EnableDelayedExpansion  Expand variables at execution time rather than at parse time.
REM 
REM 	   DisableDelayedExpansion Expand variables at parse time rather than at execution time.
REM 
REM 	   EnableExtensions        Attempt to enable Command extensions. 
REM 
REM 	   DisableExtensions       Attempt to disable Command extensions. 
REM
REM 	SETLOCAL on it's own, usually at the start of a batch file, will begin localisation of Environment Variables.
REM 	Issuing a SETLOCAL command, the batch script will inherit all current variables from the master environment/session.
REM 	Issuing an ENDLOCAL command will restore any environment variables present before the SETLOCAL was issued.
REM 	If a batch script does not use SETLOCAL and ENDLOCAL then all variables will be Global, i.e. visible and modifiable by other scripts.
REM 	Although global variables are easy to work with they are not good practice - for example if you have several batch scripts dealing with filenames (and these scripts are CALLing one another), the first script has a variable called _filename, the second script a different variable called file-name (a different name to avoid conflicting with the first script) a third script now needs something like file_name this quickly becomes very difficult to manage.
REM 
REM 	With local variables you are free to use the same variable names in multiple batch scripts - there is no conflict because the local variables are not visible to any other script. 
REM 	Local Variables can be passed from one batch routine to another with the ENDLOCAL command.
REM 
REM 	EnableDelayedExpansion
REM 	Setting EnabledDelayedExpansion will cause each variable to be expanded at execution time rather than at parse time.
REM 
REM 	DisableDelayedExpansion
REM 	Setting DisabledDelayedExpansion will cause each variable to be expanded at parse time rather than at execution time, this is the default behaviour.
REM 
REM 	Overloading a variable:
REM 	SETLOCAL can be used more than once in the same batch file so that multiple values can be stored in the same Environment Variable. To keep track of variable definitions, pair each SETLOCAL with a corresponding ENDLOCAL.
REM 
REM 	SETLOCAL is limited to 32 active instantiations per CALL level. At the root level a script can have up to 32 active SETLOCAL, and then CALL a subroutine that gets its own allocation of up to 32 SETLOCAL, etc.
REM 
REM 	@Echo off 
REM 	SETLOCAL
REM 	::Standard commission
REM 	Set _Commission=20 
REM 	Echo Standard commission %_Commission% 
REM 
REM 	::Premium commission
REM 	SETLOCAL 
REM 	Set _Commission=30
REM 	Echo Premium commission %_Commission% 
REM 
REM 	::back to Standard commission
REM 	ENDLOCAL
REM 	Echo %_Commission%
REM 
REM 	ErrorLevel
REM 	When run from a batch file, SETLOCAL will always set an ERRORLEVEL.
REM 	If given a valid argument or no arguments, a new environment is created %ERRORLEVEL% = 0
REM 	If bad parameters given, %ERRORLEVEL% = 1
REM 
REM 	EnableExtensions / DisableExtensions
REM 	Command Extensions are enabled by default, there is rarely any need to disable them.
REM 
REM 	If Command Extensions are permanently disabled or if a script is running under the Windows 95 command processor command.com then SETLOCAL ENABLEEXTENSIONS will not be able to restore them. 
REM 
REM 	A batch file to warn if command extensions are not available (see forum thread):
REM 
REM 	   VERIFY errors 2>nul
REM 	   SETLOCAL ENABLEEXTENSIONS
REM 	   IF ERRORLEVEL 1 echo Unable to enable extensions
REM 	SETLOCAL is an internal command.