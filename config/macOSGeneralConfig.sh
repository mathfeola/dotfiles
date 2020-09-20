#!/bin/sh

source config/colors.sh
## MenuBar config ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
defaults write com.apple.systemuiserver menuExtras -array \
"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
"/System/Library/CoreServices/Menu Extras/Volume.menu"

killall SystemUIServer

## Dock config ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# Have the Dock show only active app
defaults write com.apple.dock static-only -bool true; killall Dock
# Highlight hidden apps in the Dock
defaults write com.apple.Dock showhidden -bool yes; killall Dock
# Remove autohide animation
defaults write com.apple.dock autohide-delay -float 0; killall Dock
# Adding ‘Quit’ option to Finder on a Mac
defaults write com.apple.finder QuitMenuItem -bool true; killall Finder
# Stop Photos from opening automatically on your Mac
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true