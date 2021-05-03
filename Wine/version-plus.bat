@echo off
Setlocal Enabledelayedexpansion
set "str=.mp4"
set "rep=+.mp4"
for /f "delims=" %%i in ('dir /b *.*') do (
set "var=%%i" & ren "%%i" "!var:%str%=%rep%!")
pause



