#!/bin/sh

source config/colors.sh

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
