#!/usr/bin/env bash

# Install Homebrew

which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
    brew upgrade
fi

# Install Homebrew packages

brew bundle

# Add items to the Dock

dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"

killall Dock

# Configure zsh

if [[ -z "${ZSH}" ]]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh-My-ZSH already installed. Skipping..." 
fi
