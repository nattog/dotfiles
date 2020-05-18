A place to keep hard-to-remember app and system settings for my personal setup.

Especially useful tools for music (requires FFMPEG and SOX):
- `norns` - SSH into Monome Norns
- `processDirSamples` - batch processes all audio files within subdirectories to 44100hz and with some headroom.
- `processCurrentDirSample` - same as above but just for current directory
- `johncage` - embrace the avant-garde and generate the latest performance of 4'33

Clone this into a subfolder of your $HOME, create a CONFIG file inside it (use the CONFIG.template),
and then `cd bin` and `./create-symlinks` which will make symlinks in you $HOME of the files in
this repo, being careful not to overwrite anything.
