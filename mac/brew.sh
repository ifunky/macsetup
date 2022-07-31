#!/usr/bin/env bash

Echo Install Brew and Brew Apps.....

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew analytics off
brew update
brew upgrade

# Install main apps

brew install openssl
brew install git
brew install wget
brew install tree
brew install gnu-sed
brew install jq
brew install yq
brew install aquasecurity/trivy/trivy
brew install slack --cask
brew install visual-studio-code --cask
brew install typora --cask
brew install --cask snagit
brew install google-chrome --cask
brew install iterm2 --cask
brew install aws/tap/copilot-cli
brew install awscli
brew install --cask amazon-workspaces
brew install --cask adobe-acrobat-reader
brew install aws-sam-cli
brew install git-secrets
brew install devutils
brew install --cask postman
brew install newman
brew install virustotal-cli
brew install hugo

# EKS
brew install kubectl
brew install eksctl
brew install aws-iam-authenticator
brew install helm
brew install krew

brew install zsh-completions
mkdir -p ~/.zsh/completion/
eksctl completion zsh > ~/.zsh/completion/_eksctl
echo "fpath=($fpath ~/.zsh/completion)" | tee -a ~/.zshrc


sam --version

# Python
brew install pyenv 
pyenv install 3.7.7
pyenv global 3.7.7
pyenv version
pip install pydoc-markdown

# Update Python env
if grep -Fq "if command -v pyenv" ~/.zshrc
then
    echo zshrc already set to use Python env....Not updating
else
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
fi
grep '.pyenv/bin' /.zshrc || echo 'export PATH=$HOME/.pyenv/bin:$PATH' >> /.zshrc

source ~/.zshrc
pip install --upgrade pip
pip install virtualenv

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Install and configure fzf 
brew install fzf

# Install fuzzy completion:
$(brew --prefix)/opt/fzf/install

# Tidyup
brew cleanup