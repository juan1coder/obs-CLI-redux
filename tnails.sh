ffmpeg-thumbart () {
FILES=(*.mkv)

for i in "${FILES[@]}"; do
IMAGE=$((i+1))

input=video_$IMAGE.mkv

ffmpeg -i $input -i cover_$IMAGE.png -c copy -map 0 -map 1 tnail-$(date +"%d-%b-%Y_%H.%M.%S%p")_$IMAGE.mkv
done

}

#notes, the png file must have a name: cover_1.png in increments, same applyies for the video filename. all files must be in the same directory for this bash script to work, find and join the png file to the mkv video_poscast. extensions and filenames matter in this case. (cover_"$1") & (video_"$1") are static the numbering will changue on the output file but its real on the dir files. You can alo add this into your .bashrc file.  
