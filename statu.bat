@echo off
mode con: cols=40 lines=10
color 8f
title Testing for file integrity.....
IF NOT EXIST batbox.exe goto fileissuec
IF NOT EXIST cmdmenusel.exe goto fileissuec
IF NOT EXIST alarm.wav goto fileissuenc
IF NOT EXIST connected.wav goto fileissuenc
IF NOT EXIST error.wav goto fileissuenc
goto skpa
:fileissuec
mode con: cols=40 lines=20
echo issue: file(s) missing
echo files must include:
echo alarm.wav
echo batbox.exe
echo cmdmenusel.exe
echo connected.wav
echo error.wav
echo the missing file type was a crucial .exe extention, please replace
echo Continuing isn't reccomended, you are bound to encounter errors, but if you still want to, go ahead and press any key
pause
goto skpa
:fileissuenc
mode con: cols=40 lines=20
echo issue: file(s) missing
echo files must include:
echo alarm.wav
echo batbox.exe
echo cmdmenusel.exe
echo connected.wav
echo error.wav
echo the missing file type was a non-crucial .wav file used as an error, connection, ect notification. errors may occur, but you may continue 
pause
mode con: cols=40 lines=10
:skpa
batbox /h 0
batbox /c 0x1f /g 0 0 /d "Testing if the internet is accesible... "
title Testing if the internet is accessible...
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto setup
IF     ERRORLEVEL 1 goto wificonnecterror
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto setup
IF     ERRORLEVEL 1 goto wificonnecterror
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto setup
IF     ERRORLEVEL 1 goto wificonnecterror
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto setup
IF     ERRORLEVEL 1 goto wificonnecterror
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[???] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto setup
IF     ERRORLEVEL 1 goto wificonnecterror
cls
color 04
echo unknown if/else error
pause
goto eof


:wificonnecterror
batbox /c 0xcf /g 0 2 /d "                                        "
batbox /c 0xc0 /g 0 3 /d "  [HST]--- // ---[INTER]--- ?? ---[???] "
batbox /c 0xcf /g 0 4 /d "                                        "
batbox /c 0x1f /g 0 0 /d "Error!                                  "
batbox /c 0x8f /g 0 6
echo Internet unreachable, still continue?
batbox /s error
cmdmenusel 0bf8 "Yes" "No"
if errorlevel 2 goto eof

:setup
title Setup
cls
color 8f
batbox /c 0x0f /g 0 2 /d "                                        "
batbox /c 0x0f /g 0 3 /d "  [HST]----------[INTER]--- ?? ---[???] "
batbox /c 0x0f /g 0 4 /d "                                        "
batbox /c 0x1f /g 0 0 /d "Setup                                   "
batbox /c 0x71 /g 1 7 /d "                                      "
batbox /c 0x8f /g 1 6 /d "Define URL of target                    "
batbox /c 0x70 /g 1 7 /h 1
set /p url=
batbox /c 0x71 /g 1 7 /d "                                      "
batbox /c 0x8f /g 1 6 /d "Create a shorter name for it (optional) "
batbox /c 0x70 /g 1 7 /h 1
set /p nick=
batbox /c 0x70 /g 1 3 /h 0

cls
color 8f
title Connecting.......
batbox /c 0x1f /g 0 0 /d "Connecting to target...                 "
batbox /c 0x0f /g 0 2 /d "                                        "
batbox /c 0x0f /g 0 3 /d "  [HST]----------[INTER]----------[TRG] "
batbox /c 0x0f /g 0 4 /d "                                        "
batbox /c 0x8f /g 0 6 /d "Output:                                 "
batbox /c 0x0a /g 0 7 /d "Sending initial ping request to verify  "
batbox /c 0x0a /g 0 8 /d "validity of URL given                   "
batbox /w 3 /c 0x0f /g 0 3 /d "  [HST]O-"
batbox /w 3 /c 0x0f /g 0 3 /d "  [HST]--"
batbox /c 0x0f /g 9 3 /d "O-------[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--O-----[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "----O---[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "------O-[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------OINTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[IOTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTOR]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTERO--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]-O------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]---O----"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]-----O--"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]-------O"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]--------"
batbox /c 0x0f /g 32 3 /d "-O[TRG] "
batbox /w 3 /c 0x0f /g 32 3 /d "--[TRG] "
batbox /c 0x0a /g 0 7
PING -n 1 %url%|find "Reply from "
IF ERRORLEVEL 1 goto connecterror
title Connection established!
batbox /c 0x0f /g 0 2 /d "                                        "
batbox /c 0x0f /g 0 3 /d "  [HST]----------[INTER]----------[TRG] "
batbox /c 0x0f /g 0 4 /d "                                        "
batbox /w 3 /c 0xbf /g 34 3 /d "[TRG]"
batbox /w 100 /c 0x0f /g 32 3 /d "--[TRG] "
batbox /w 3 /c 0x0f /g 32 3 /d "-O[TRG] "
batbox /w 3 /c 0x0f /g 32 3 /d "--[TRG] "
batbox /c 0x0f /g 9 3 /d "--------[INTER]-------O"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]-----O--"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]---O----"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]-O------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTERO--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTOR]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[IOTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------OINTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "------O-[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "----O---[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--O-----[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "O-------[INTER]--------"
batbox /w 3 /c 0x0f /g 9 3 /d "--------[INTER]--------"
batbox /c 0x0f /g 0 3 /d "  [HST]O-"
batbox /w 3 /c 0x0f /g 0 3 /d "  [HST]--"
batbox /w 3 /c 0xbf /g 2 3 /d "[HST]"
batbox /w 100 /c 0x0f /g 0 3 /d "  [HST]--"
batbox /c 0xaf /g 0 2 /d "                                        "
batbox /c 0xaf /g 0 3 /d "  [HST]----------[INTER]----------[TRG] "
batbox /c 0xaf /g 0 4 /d "                                        "
batbox /w 100 /c 0x1f /g 0 0 /d "Connection established!                 "
batbox /s connected
batbox /c 0x8a /g 0 7 /d "                                        "
batbox /c 0x8a /g 0 8 /d "                                        "
batbox /c 0x8f /g 0 6
cmdmenusel 0bf8 "Start monitor"
:y
cls
color 8f
batbox /c 0x1f /g 0 0 /d "                                        "
batbox /c 0x1f /g 0 0 /d "%nick% status"
batbox /c 0x0f /g 0 2 /d "                                        "
batbox /c 0x0f /g 0 3 /d "  [HST]            ...            [TRG] "
batbox /c 0x0f /g 0 4 /d "                                        "
batbox /c 0x8f /g 0 6 /d "Output:                                 "
batbox /w 100
batbox /s connected
goto skp
:re
batbox /w 3 /c 0x5f /g 32 3 /d "--[TRG] "
batbox /w 3 /c 0xbf /g 34 3 /d "[TRG]"
batbox /w 100 /c 0x5f /g 32 3 /d "--[TRG] "
batbox /w 3 /c 0x5f /g 32 3 /d "-O[TRG] "
batbox /w 3 /c 0x5f /g 32 3 /d "--[TRG] "
batbox /c 0x5f /g 9 3 /d "--------[INTER]-------O"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]-----O--"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]---O----"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]-O------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTERO--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTOR]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[IOTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------OINTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "------O-[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "----O---[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--O-----[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "O-------[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]--------"
batbox /c 0x5f /g 0 3 /d "  [HST]O-"
batbox /w 3 /c 0x5f /g 0 3 /d "  [HST]--"
batbox /w 3 /c 0xbf /g 2 3 /d "[HST]"
batbox /w 100 /c 0x5f /g 0 3 /d "  [HST]--"
batbox /w 1000
:skp
title Website status
batbox /c 0x5f /g 0 2 /d "                                        "
batbox /c 0x5f /g 0 3 /d "  [HST]----------[INTER]----------[TRG] "
batbox /c 0x5f /g 0 4 /d "                                        "
batbox /c 0x0a /g 0 7 /d "Pinging the target, and waiting for a   "
batbox /c 0x0a /g 0 8 /d "reply...                                "
batbox /w 3 /c 0x5f /g 0 3 /d "  [HST]O-"
batbox /w 3 /c 0x5f /g 0 3 /d "  [HST]--"
batbox /c 0x5f /g 9 3 /d "O-------[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--O-----[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "----O---[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "------O-[INTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------OINTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[IOTER]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTOR]--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTERO--------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]-O------"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]---O----"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]-----O--"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]-------O"
batbox /w 3 /c 0x5f /g 9 3 /d "--------[INTER]--------"
batbox /c 0x5f /g 32 3 /d "-O[TRG] "
batbox /w 3 /c 0x5f /g 32 3 /d "--[TRG] "
batbox /g 0 7 /c 0x0a
PING -n 1 %url%|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto re
title ......
batbox /c 0x0c /g 0 8 /d "No reply... testing for internet access "
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]--- ?? ---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /s error
batbox /w 200
:rea
batbox /g 0 7 /c 0x0a
PING -n 1 google.com|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto reb
title Internet disconnected
batbox /c 0x0a /g 0 7 /d "                                        "
batbox /c 0x0a /g 0 8 /d "                                        "
batbox /c 0x7f /g 0 2 /d "                                        "
batbox /c 0x70 /g 0 3 /d "  [HST]--- // ---[INTER]--- ?? ---[TRG] "
batbox /c 0x7f /g 0 4 /d "                                        "
batbox /c 0x0c /g 0 7 /d "Issue: Internet is inaccessible         "
batbox /c 0x0c /g 0 8 /d "Checking again in 5                     "
batbox /w 1000
batbox /c 0x0c /g 0 8 /d "Checking again in 4                     "
batbox /w 1000
batbox /c 0x0c /g 0 8 /d "Checking again in 3                     "
batbox /w 1000
batbox /c 0x0c /g 0 8 /d "Checking again in 2                     "
batbox /w 1000
batbox /c 0x0c /g 0 8 /d "Checking again in 1                     "
batbox /w 1000
title Reconnecting....
batbox /c 0x0c /g 0 7 /d "Checking again in 1                     "
batbox /c 0x0f /g 0 8 /d "Attempting to reconnect...              "
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 google.com|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto reb
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 google.com|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto reb
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 google.com|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto reb
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 google.com|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto reb
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---~~~~---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
batbox /c 0xef /g 0 2 /d "                                        "
batbox /c 0xe0 /g 0 3 /d "  [HST]---    ---[INTER]--- ?? ---[TRG] "
batbox /c 0xef /g 0 4 /d "                                        "
batbox /w 100
PING -n 1 google.com|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto reb
goto rea

:reb
batbox /c 0x0a /g 0 7 /d "                                        "
batbox /c 0x0a /g 0 8 /d "                                        "
PING -n 1 %url%|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto y
title Target is offline!
batbox /c 0xcf /g 0 2 /d "                                        "
batbox /c 0xcf /g 0 3 /d "  [HST]----------[INTER]--- // ---[TRG] "
batbox /c 0xcf /g 0 4 /d "                                        "
batbox /c 0x0c /g 0 7 /d "********** Target is offline! **********"
batbox /c 0x0c /g 0 8
echo %url% is offline!
:rec
batbox /s alarm
PING -n 1 %url%|find "Reply from "
IF "%ERRORLEVEL%" == "0" goto re
goto rec

:connecterror
title Could not connect
batbox /c 0x8a /g 0 7 /d "                                        "
batbox /c 0x8a /g 0 8 /d "                                        "
batbox /c 0xcf /g 0 2 /d "                                        "
batbox /c 0xcf /g 0 3 /d "  [HST]----------[INTER]--- // ---[TRG] "
batbox /c 0xcf /g 0 4 /d "                                        "
batbox /c 0x1f /g 0 0 /d "Error!                                  "
batbox /c 0x8f /g 0 5 /d "Could not connect, website may be down  "
batbox /c 0x8f /g 0 6 /d "or mispelled                            "
batbox /c 0x8f /g 0 7 /d "do you still wish to continue?          "
batbox /g 0 8
batbox /s error
cmdmenusel 0bf8 "Yes" "No"
if errorlevel 2 goto setup
if errorlevel 1 goto y
goto setup


:eof