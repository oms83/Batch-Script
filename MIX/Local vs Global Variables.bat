@echo off
color 0a

SET PI=3.14

SETLOCAL
set /a base=5.4
set /a height=3
set /a sequareArea = (%base% * %height%) / 2
echo Sequare Area : %sequareArea%
ENDLOCAL

SETLOCAL
set /a r=10
set /a cycleArea = 2 * %PI% * %r%
echo Cycle Area: %cycleArea%
ENDLOCAL


pause > nul