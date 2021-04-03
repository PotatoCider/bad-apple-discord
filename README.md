# Bad apple on Discord with animated emotes
<div align="center">
  <br />
  <p>
    <a href="https://www.youtube.com/watch?v=EGxJysip_yY"><img src="https://i.imgur.com/oLlGCxg.png" alt="Bad Apple!! but it's animated emotes on Discord" /></a>
  </p>
  <br />
  <p>
    <a href="https://discord.gg/pXpV9zctap"><img src="https://img.shields.io/discord/810176692068679711?color=7289da&logo=discord&logoColor=white" alt="Discord server" /></a>
  </p>
</div>

# Requirements
- Bash
- [ffmpeg](https://www.ffmpeg.org/)
- [ImageMagick](https://imagemagick.org/) (Optional)
- [gifsicle](https://www.lcdf.org/gifsicle/)

Currently, the script is only tested on MacOS but it could work on Windows with a batch file or WSL.
# Steps
1. `./bad-apple.sh`
# Explanation
Basically, all I needed was ffmpeg to convert and crop the mp4 into small little gifs (x80 using a bash script)
And after that I used gifsicle to compress them to under 256 kB to be within Discord's size limits.
# Caveats
I have yet to figure out why I couldn't go above 12 FPS as the Discord app somehow resets them before the GIFs reached the end of the video. This results in the larger GIFs to reset earlier than expected and causes syncing issues with the other animated emotes midway through the video. However, playing the emotes on a regular HTML webpage does not yield syncing issues. If someone can figure out why the Discord app causes this, please let me know!
