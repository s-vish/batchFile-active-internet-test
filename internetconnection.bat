CLS
@echo off

:START
ECHO Checking connection, please wait...
PING -n 2 www.google.sg | find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto :SUCCESS
IF     ERRORLEVEL 1 goto :FAILURE2

:SUCCESS
CLS
ECHO ---------***********---------
ECHO You have an active Internet connection
ECHO connection fine
timeout /t 120
GOTO START

:FAILURE2
ECHO !!!!!Connection Failed!!!!!
start D:\Ringtones\AEY0000.mp3
pause
GOTO START