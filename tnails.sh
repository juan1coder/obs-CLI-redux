#ffmpeg-thumbart 
FILES=(*.mkv)
#IMAGE=$2
for i in "${!FILES[@]}"; do
IMAGE=$((i+1))

input=video_$IMAGE.mkv

ffmpeg -i $input -i tas_$IMAGE.png -c copy -map 0 -map 1 tnail-$(date +"%d-%b-%Y_%H.%M.%S%p")_$IMAGE.mkv
done



#notes, the png file must have a name: cover_1.png in increments, same for the video_ filename. 
#all files must be in the same directory for this bash script to work, find and join the png file 
#to the mkv video. extensions and filenames matter in this case. (cover_"$1") & (video_"$1") are static 
#the numbering will changue on the output file but its real on the dir files. 
#You will need to rename your files, i used  bulk renamer by thunar.  
#***You can add this into your .bashrc file. ***


