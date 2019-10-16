@echo off
REM inkey Enter a keystroke: %%key
set /p %key%

switch %key

case A

   echo It's an A

case B .or. C

   echo It's either B or C

default

   echo It's none of A, B, or C

endswitch

pause