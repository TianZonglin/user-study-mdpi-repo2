@echo off
for %%f in (*.mp4) do ( 
D:/ffmpeg.exe -i %%f -pix_fmt yuv420p -vcodec libx264 -crf 10 %%f.mp4
del /f /s /q %%f
)

Setlocal Enabledelayedexpansion
set "str=.mp4.mp4"
set "rep=.mp4"
for /f "delims=" %%i in ('dir /b *.*') do (
set "var=%%i" & ren "%%i" "!var:%str%=%rep%!")
pause



