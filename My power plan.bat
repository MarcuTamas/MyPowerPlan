@ECHO off

:main
ECHO.
ECHO ..........................
ECHO ^| Chose your power plan: ^|
ECHO ..........................
ECHO.
ECHO 1. Balaced; 
ECHO 2. High performance; 
ECHO 3. Ultimate performance.
ECHO.

CHOICE /c 123 /m "Press the number of the chosen plan."
ECHO.

IF ERRORLEVEL 3 GOTO three
IF ERRORLEVEL 2 GOTO two
IF ERRORLEVEL 1 GOTO one
GOTO end

:one
ECHO *****************************
ECHO ^| You have chosen Balanced! ^|
ECHO *****************************
POWERCFG /s 381b4222-f694-41f0-9685-ff5bb260df2e
GOTO end

:two
ECHO *************************************
ECHO ^| You have chosen High performance! ^|
ECHO *************************************
POWERCFG /s 99552302-9951-4c3b-ba10-10df83b6540d
GOTO end

:three
POWERCFG /s f5c98e9c-f604-466c-81c4-63c26f174f93
ECHO *****************************************
ECHO ^| You have chosen Ultimate performance! ^|
ECHO *****************************************
GOTO end

:end
ECHO.
CHOICE /c YN /m "Do you want to change to another power plan?"

IF ERRORLEVEL 2 GOTO exit
IF ERRORLEVEL 1 GOTO main

:exit
ECHO. 
ECHO ====================
ECHO ^| Have a nice day. ^|
ECHO ====================
ECHO Press any key to exit.
PAUSE > nul
EXIT

GOTO :eof