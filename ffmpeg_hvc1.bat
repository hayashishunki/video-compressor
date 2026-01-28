@echo off
 setlocal enabledelayedexpansion
 set FIND_EXE=

 echo ffmpeg を検索中...
 REM ffmpeg.exe をシステムパスから検索
 for /f "delims=" %%F in ('where ffmpeg.exe 2^> NUL') do (
    if "!FIND_EXE!"=="" set "FIND_EXE=%%~fF"
 )

 REM ffmpeg.exe が見つからなかった場合、スクリプトのあるディレクトリ内を検索
 if "!FIND_EXE!"=="" set "FIND_EXE=%~dp0\ffmpeg\bin\ffmpeg.exe"

 REM ffmpeg.exe が見つからなかった場合、エラーメッセージを表示して終了
 if not exist "!FIND_EXE!" (
    echo !FIND_EXE! が見つかりません。
    GOTO EXIT
 )

 REM 動画を圧縮
 echo 変換を開始します...
 echo %FIND_EXE% -i %1 -c:a copy -c:v hevc_qsv -q:v 25 -tag:v hvc1 "%~dp1%~n1_h265.mp4"
 %FIND_EXE% -i %1 -c:a copy -c:v hevc_qsv -q:v 25 -tag:v hvc1 "%~dp1%~n1_h265.mp4"

 REM 次の引数がない場合、終了
 if "%~2"=="" goto exit
 echo 次の処理へ

 :EXIT
 pause