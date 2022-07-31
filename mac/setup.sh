#!/usr/bin/env bash

# Install apps and binaries with Brew
#source mac/brew.sh

source ./zsh-install.sh
#source link-dotfiles.sh
source ./macos

# Set default browser
/Applications/Firefox.app/Contents/MacOS/firefox -setDefaultBrowser

echo "Configure iTerm2 settings..."
# Set the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

wget -O ~/dotfiles/iterm2 https://github.com/JanLauGe/.dotfiles/blob/master/iterm_profile.json


# Restart zsh
source ~/.zshrc