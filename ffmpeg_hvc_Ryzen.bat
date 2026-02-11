@echo off
setlocal enabledelayedexpansion
set FIND_EXE=

echo ffmpeg を検索中...
for /f "delims=" %%F in ('where ffmpeg.exe 2^> NUL') do (
   if "!FIND_EXE!"=="" set "FIND_EXE=%%~fF"
)

if "!FIND_EXE!"=="" set "FIND_EXE=%~dp0\ffmpeg\bin\ffmpeg.exe"

if not exist "!FIND_EXE!" (
   echo !FIND_EXE! が見つかりません。
   GOTO EXIT
)

echo 変換を開始します...
echo %FIND_EXE% -i %1 -c:a copy -c:v hevc_amf -quality balanced -usage transcoding -q:v 25 "%~dp1%~n1_h265.mp4"
%FIND_EXE% -i %1 -c:a copy -c:v hevc_amf -quality balanced -usage transcoding -q:v 25 "%~dp1%~n1_h265.mp4"

if "%~2"=="" goto exit
echo 次の処理へ

:EXIT
pause