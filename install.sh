#!/bin/bash

source colors.sh

DOTFILES="$HOME/dev"

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
brew install htop
brew install youtube-dl
brew install youtube-dl ffmpeg
# youtube-dl -f bestvideo+bestaudio ‘link’

# ZSH:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

bash ./install/softwares.sh
bash ./config/ruby-configuration.sh
bash ./config/ios-configuration.sh

echo "\n# General aliases" >> ~/.zshrc
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