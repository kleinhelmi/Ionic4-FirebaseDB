@echo off 
REM Infos:
REM https://www.tutorialspoint.com/batch_script/batch_script_arrays.htm
REM

set Arr[0]=1 
set Arr[1]=2 
set Arr[2]=3 
set Arr[3]=4 

REM Schleife zur Ausgabe
set "x=0" 
:SymLoop 

if defined Arr[%x%] ( 
   call echo %%Arr[%x%]%% 
   set /a "x+=1"
   GOTO :SymLoop 
)
echo "The length of the array is" %x%
pause