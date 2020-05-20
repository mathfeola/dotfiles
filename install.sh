#!/bin/bash

source colors.sh

DOTFILES="$HOME/Development/dotfiles"

if [[ -d $DOTFILES ]]; then
    print 'Checking dotfiles directory'
else
    print 'Cloning dotfiles'
    git clone https://github.com/mathfeola/dotfiles.git $DOTFILES
fi

cd $DOTFILES

# Brew ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Setting up Homebrew"
if test ! $(which brew); then
  msg_install "Installing homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  msg_ok 'Homebrew'
else
  msg_alert "Homebrew already instaled"
  msg_update "Updating Homebrew"
  brew update
fi

# Brew apps :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew"
brew install zsh
brew install vim
brew install mas
brew install unrar

# Config ZSH:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir ~/dev
mkdir ~/dev/zsh
git clone git@github.com:agnoster/agnoster-zsh-theme.git ~/dev/zsh/agnoster-zsh-theme
git clone https://github.com/powerline/fonts.git ~/dev/zsh/fonts
sh ~/dev/zsh/fonts/install.sh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

source install/softwares.sh
source config/global.sh
source config/ruby-configuration.sh
source config/ios-configuration.sh
