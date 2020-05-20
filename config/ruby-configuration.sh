#!/bin/bash

brew install ruby-build
brew install rbenv
rbenv install 2.6.5
rbenv global 2.6.5

echo '# rbenv init config' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc