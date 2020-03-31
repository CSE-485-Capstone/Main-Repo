#!/bin/bash


# Encode with H.265 encoder

./ffmpeg -i input.mp4 -c:v libx265 -c:a copy output.mp4


# Encode with H.264 encoder

./ffmpeg -i input.mp4 -c:v libx264 -c:a copy output.mp4


# Calculate SSIM and PSNR. Frame-by-frame results are saved in log files and averages are displayed on screen.
# Note: An error will be displayed after the last frame is processed. This is expected because it will try to go to the next frame, but since there are no more frames, it will end the test. 

./ffmpeg -i distorted.mp4 -i reference.mp4 -lavfi "ssim=ssim.log;[0:v][1:v]psnr=psnr.log" -f null –

