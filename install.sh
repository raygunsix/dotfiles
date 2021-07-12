#!/usr/bin/env bash

ITERM2_PROFILES_DIR="$HOME/Library/Application Support/iTerm2/DynamicProfiles"

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

if [ ! -f "$HOME/.zshrc" ]; then
    cat .zshrc > $HOME/.zshrc
else
    echo ".zshrc already exists. Skipping..." 
fi

# iterm2

if [ -d "$ITERM2_PROFILES_DIR" ]; then
    cat iterm2-profile.json > "$HOME/Library/Application Support/iTerm2/DynamicProfiles/raygunsix-profile.json"
else
    echo "No iterm2 profiles dir detected. Skipping..."
fi

# Other

cat .gemrc > $HOME/.gemrc
