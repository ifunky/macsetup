#!/bin/bash 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Installs ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/rupa/z ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/z
# Install powerlevel110k
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

sed -i '' 's/ZSH_THEME="robbyrussell"/\ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
source ~/.zshrc && echo "Edited line in ~/zshrc :" && cat ~/.zshrc | grep -m 1 ZSH_THEME