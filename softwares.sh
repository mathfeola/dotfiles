#!/bin/sh

source colors.sh

# Brew apps :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew"
brew install zsh
brew install vim
brew install mas
brew install unrar
brew install htop
brew install youtube-dl
brew install ffmpeg
brew install github/gh/gh
# youtube-dl -f bestvideo+bestaudio ‘link’

echo "# General aliases" >> ~/.zshrc
echo 'alias dl="cd ~/Downloads"' >> ~/.zshrc
echo 'alias code-dotfiles="cd ~/dev/dotfiles && code ."' >> ~/.zshrc
echo 'alias update="gfa ; ggpull"' >> ~/.zshrc
echo 'alias push="gpsup"' >> ~/.zshrc

echo '# iOS related aliases' >> ~/.zshrc
echo 'alias repoup="bundle exec pod repo update"' >> ~/.zshrc
echo 'alias podi="bundle exec pod install"' >> ~/.zshrc
echo 'alias bi="bundle install"' >> ~/.zshrc
echo 'alias podiup="bundle exec pod install --repo-update"' >> ~/.zshrc
echo 'alias rmderived="rm -rf ~/Library/Developer/Xcode/DerivedData"' >> ~/.zshrc

#  Brew Cask ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew cask"
brew cask

cask=(
  "iterm2"
  "visual-studio-code"
  "transmission"
  "spotify"
  "coconutbattery"
  "tor-browser"
  "slack"
  "vlc"
  "discord"
  "postman"
  "docker"
  "balenaetcher"
)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew cask install $app
  msg_ok "$app"
done

## List outside installed apps ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# GlobalProtect
# Disk Cleaner
# Xcode
# Yellow Duck
# OBS
# Postman
# Veracrypt


## Music ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# MainStage 3
# GarageBand
# Rekordbox


