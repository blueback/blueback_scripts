<h1 align="center">
FFMPEG video converter
</h1>

conversions
-----------
1. convert mp4 input video to mkv output video with audio codec AAC and video codec H.264

        ffmpeg -i input.mp4 -c:v libx264 -c:a aac output.mkv

1. convert mp4 input video to mkv output video with audio and video codec unchanged

        ffmpeg -i input.mp4 -c copy output.mkv
