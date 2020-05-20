#!/bin/sh

source colors.sh

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
)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew cask install $app
  msg_ok "$app"
done

# List outside installed apps

# GlobalProtect
# Disk Cleaner
# Xcode
# Yellow Duck
# OBS
# Postman
# Veracrypt


## Music:
# MainStage 3
# GarageBand
# Rekordbox


