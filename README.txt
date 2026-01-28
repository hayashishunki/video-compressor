■概要
ffmpegを使用して、動画を圧縮する

■環境
OS : Windows

■必要ツール
動画圧縮は、以下ffmpegをダウンロードし、「video-compressor/」配下に配置してから使用方法を実施すること
https://www.gyan.dev/ffmpeg/builds/
・(Release builds)ffmpeg-release-full.7z　.ver .sha256　※存在しない場合、最新のもので試してみてください

■使用方法
以下のbatファイルに圧縮したい動画ファイルをドラッグアンドドロップする
圧縮したファイルは、元動画と同じ場所に出力される

video-compressor/
・ffmpeg_hvc1.bat : h.265で動画を圧縮

■出力時のファイル名
 - ffmpeg_hvc1.bat
   →元ファイル名_h265.mp4

【ライセンス情報】
このツールは ffmpeg（https://ffmpeg.org）を使用しています。
ffmpegのライセンス詳細は、 ffmpeg フォルダ内の LICENSE ファイルを参照してください。
