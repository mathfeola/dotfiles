#!/bin/bash

brew install chisel
# TODO: alias to automatically create .lldbinit

echo '# iOS related aliases' >> ~/.zshrc
echo 'alias repoup="bundle exec pod repo update"' >> ~/.zshrc
echo 'alias podi="bundle exec pod install"' >> ~/.zshrc
echo 'alias bi="bundle install"' >> ~/.zshrc
echo 'alias podiup="bundle exec pod install --repo-update"' >> ~/.zshrc
echo 'alias rmderived="rm -rf ~/Library/Developer/Xcode/DerivedData"' >> ~/.zshrc