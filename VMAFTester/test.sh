#!/usr/bin/env bash

DIR_VIDEOS=$1
OUTPUT_FILE=$2
VMAF=$(which vmafossexec)
VMAF_MODEL="/home/haxx/Software/vmaf/model/vmaf_v0.6.1.pkl"
echo -e "Finding videos in ${DIR_VIDEOS}; writing results to ${2}"

for video in ${DIR_VIDEOS}/* ;
do
	# run VMAF
	ffmpeg -i ${video} ${video}.conv.yuv
done

TMPFL=$(mktmp)

for video in ${DIR_VIDEOS}/* ;
do
	DIR_TMP="${DIR_VIDEOS}/tmp_${video}_outputs"
	DIR_TMP_RES="${DIR_VIDEOS}/tmp_${video}_res"
	mkdir -p ${DIR_TMP}

	# convert to H.264
	ffmpeg -i $video -c:v libx264 -c:a copy ${DIR_TMP}/h264.mp4

	# convert to H.265
	ffmpeg -i $video -c:v libx265 -c:a copy ${DIR_TMP}/h265.mp4

	# convert to AV1
	ffmpeg -i $video -c:v libaom-av1 -b:v 0 -strict experimental ${DIR_TMP}/av1.mp4

	# convert to YUV
	ffmpeg -i $video -pix_fmt yuv420p ${DIR_TMP}/control.yuv | tee /tmp/fox_test.tmp

	awk 'BEGIN{   }' /tmp/fox_test.tmp

	# run vmaf on each
	for tst in ${DIR_TMP}/* ;
	do
		echo -e "\n\n\n\n##########################\n\n\n\n"
		# convert to yuv
		ffmpeg -i ${tst} -pix_fmt yuv420p ${tst}.yuv
		exit
		$VMAF yuv420p ${DIR_TMP}/control.yuv ${tst}.yuv $VMAF_MODEL --log ${DIR_TMP_RES}/output_vmaf.xml --psnr --ssim --ms-ssim --thread 0 --subsample 2
	done
done
