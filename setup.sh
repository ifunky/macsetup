#!/bin/bash 

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    CYGWIN*)    MACHINE=Cygwin;;
    MINGW*)     MACHINE=MinGw;;
    *)          MACHINE="UNKNOWN:${unameOut}"
esac


if [[ "$MACHINE" == "Linux" ]]
  then 
    source windows/setup.sh
elif [[ "$MACHINE" == "Mac" ]]
  then 
    echo sds
    source mac/setup.sh
fi

# Common setup

# SSM session management
cd /tmp
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"
unzip sessionmanager-bundle.zip
sudo ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin
echo Installed session manager plugin

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing new .dotfiles ..."
rsync --exclude ".git/" \
  --exclude ".DS_Store" \
  --exclude ".osx" \
  --exclude "mac" \
  --exclude "setup.sh" \
  --exclude "README.md" \
  --exclude "zsh-install.sh" \
  -avh --no-perms . ~;
#rsync -av --no-perms --exclude="README.md" --exclude=".git" ./dotfiles/ ~

# Run after dotfiles are in place as we need .vimrc
vim +PluginInstall +qall

# Setup for CodeCommit
pip install git-remote-codecommit