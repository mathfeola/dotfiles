#!/bin/sh

source config/colors.sh

echo "# General aliases" >> ~/.zshrc
echo 'alias dl="cd ~/Downloads"' >> ~/.zshrc
echo 'alias update="gfa ; ggpull"' >> ~/.zshrc
echo 'alias push="gpsup"' >> ~/.zshrc
echo 'alias dlvideo="youtube-dl -f 22"' >> ~/.zshrc
