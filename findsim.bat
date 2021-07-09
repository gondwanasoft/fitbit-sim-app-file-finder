@rem Usage: findsim appname
@rem appname need not be complete, but should be sufficient to be unambiguous.
@rem If appname is ambiguous, multiple matches are possible.
@rem If appname contains one or more spaces, surround it with "".
@rem If you don't specify appname on the command line, you will be prompted for it.
@rem The output identifies the location of the app's manifest file,
@rem but everything in the numeric directory relates to your app.
@echo off
@setlocal
if [%1]==[] goto NO_ARG
set name=%1
goto DO_IT
:NO_ARG
set /p name=App name?
:DO_IT
@C:

call :CHECK_DEVICE Ionic higgs
call :CHECK_DEVICE Versa meson
call :CHECK_DEVICE "Versa Lite" gemini
call :CHECK_DEVICE "Versa 2" mira
call :CHECK_DEVICE "Versa 3" atlas
call :CHECK_DEVICE Sense vulcan

@echo.
@pause
@goto :eof

:CHECK_DEVICE deviceName deviceId
set directory="C:\Users\%username%\AppData\Roaming\Fitbit OS Simulator\%2\app\apps"
@cd %directory% 2> nul
if %errorlevel%==1 goto :eof
@findstr /s /I /M /c:%name% manifest.json > nul
@if %errorlevel%==0 (
  @Echo.
  @Echo %~1:
  @CD
  @findstr /s /I /M /c:%name% manifest.json
)
goto :eof
