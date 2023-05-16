ffmpeg-thumbart () {
FILES=(alarm*.mkv)
IMAGES=(*.png)
for i in "${!FILES[@]}"; do
IMAGE=$((i+1))

input=$FILES

ffmpeg -i $input -i $IMAGES -c copy -map 0 -map 1 tnail-$(date +"%d-%b-%Y_%H.%M.%S%p")_$IMAGE.mkv
done

}

#notes, the png file is ok with *.png, extension, the video filename will have to start with alarm*.mkv for this script. all files must be in the same directory for this bash script to work, find and join the png file to the mkv video. extensions and filenames matter in this case. the numbering will changue on the output file. ***You can alo add this into your .bashrc file. ***
