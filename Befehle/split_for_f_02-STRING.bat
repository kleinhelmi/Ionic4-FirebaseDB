@echo off
set pfad=U:\helmlinger\ORDNER-1\ORDNER-2\ORDNER-3\datei.txt


For /f "delims=\ tokens=1,2,3" %%i in ("%pfad%") do ( 
      Set var1=%%i
      Set var2=%%j
      Set var3=%%k
	  ) 

Echo var1 hat Wert [%var1%] 
Echo var2 hat Wert [%var2%] 
Echo var3 hat Wert [%var3%] 

pause



set ausdruck=adam;eva;jens

echo.-- Split off the first date token, i.e. day of the week
for /f "tokens=* delims=;" %%g in ("%ausdruck%") do echo %%a & pause
echo.
echo.
echo.
echo.Date   : %date%
echo.d      : %d%
echo.

echo.-- Split the date into weekday, month, day, and year, using slash and space as delimiters
for /f "tokens=1,2,3,4 delims=/.;" %%a in ("%ausdruck%") do set eins=%%a&set zwei=%%b&set drei=%%c&set vier=%%d
echo eins  : %eins%
echo zwei  : %zwei%
echo drei  : %drei%
echo vier  : %vier%

echo.
echo Datei am Ende
pause
