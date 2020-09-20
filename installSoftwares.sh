#!/bin/sh

source config/colors.sh

# Brew apps :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew"
brew install zsh
brew install vim
brew install mas
brew install unrar

# Aliases :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

echo "# General aliases" >> ~/.zshrc
echo 'alias dl="cd ~/Downloads"' >> ~/.zshrc
echo 'alias update="gfa ; ggpull"' >> ~/.zshrc
echo 'alias push="gpsup"' >> ~/.zshrc

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
# Yellow Duck
# OBS
# Postman
# Veracrypt
# Disk Cleaner
mas install 970246631

## Music ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# Logic Pro x
mas install 634148309
# MainStage 3
mas install 634159523
# Rekordbox
# wget https://cdn.rekordbox.com/files/20200908113450/Install_rekordbox_6_1_0.pkg_.zip

## Menu bar config ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

defaults write com.apple.systemuiserver menuExtras -array \
"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
"/System/Library/CoreServices/Menu Extras/Volume.menu"

killall SystemUIServer

## dock config ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# Have the Dock show only active app
defaults write com.apple.dock static-only -bool true; killall Dock
# Highlight hidden apps in the Dock
defaults write com.apple.Dock showhidden -bool yes; killall Dock
# Remove autohide animation
defaults write com.apple.dock autohide-delay -float 0; killall Dock
