#!/bin/sh

source colors.sh

# .aliases ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if [ -f "$HOME/.aliases" ]; then
    msg_update ".aliases"
    rm ~/.aliases
else
    msg_install ".aliases"
fi

sudo ln -s $DOTFILES/config/.aliases ~/.aliases
msg_checking ".aliases"

