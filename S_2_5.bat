@echo off
for /f "tokens=1" %%z in ('more nb_list.txt ^| find /i "unikatowy"') do (
echo. >>shr_list.txt
echo Komputer: %%z >>shr_list.txt
echo ========================================================>>shr_list.txt
for /f "tokens=* " %%a in ('net view %%z ^|find /i "dysk"') do call :strip \\%%z\%%a
rem for /f "tokens=* delims= " %%a in (test.txt) do call :strip %%a
)
goto koniec

:strip
set count=0
for %%a in (%*) do set /a count+=1
set /a count-=1
set wsk=0
set sciezka=
:petla
set /a wsk+=1
set sciezka=%sciezka% %1
shift
if %wsk% lss %count% goto petla
echo %sciezka%>>shr_list.txt

:koniec
