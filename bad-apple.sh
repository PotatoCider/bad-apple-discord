#!/bin/zsh

mkdir -p output/original
mkdir -p output/final
cd output
# i=0
# h=48
# for y in {0..359..48};
# do
#     for x in {0..479..48};
#     do
#         if (( y == 336 )); then
#             h=24
#         else
#             h=48
#         fi
#         ffmpeg -i ../bad-apple-original.mp4 -r 12 -filter:v "crop=48:${h}:${x}:${y},format=yuv420p" -s 30x30 "original/${i}.gif"
#         ((i=i+1))
#     done
# done

cd original

# Include this if you want more compression (Takes lots of time)
# mkdir -p ../image_magick
# for f in *.gif;
# do
#     convert ${f} -verbose -coalesce -layers OptimizeFrame ../image_magick/${f}
# done
# cd ../image_magick

for f in *.gif; 
do
    gifsicle -O3 --verbose --resize 30x30 ${f} -o ../final/${f}
done
