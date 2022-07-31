#!/usr/bin/env bash


if grep -Fq "if command -v pyenv" ~/.zshrc
then
    echo zshrc already set to use Python env....Not updating
else
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
fi


sed -i '' 's/ZSH_THEME="robbyrussell"/\ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

source ~/.zshrc && echo "Edited line in ~/zshrc :" && cat ~/.zshrc | grep -m 1 ZSH_THEME


sed -i '' '/^plugins=(/  a\
 \ \ zsh-autosuggestions \
 \ \ zsh-syntax-highlighting \
 \ \ zsh-completions \
 \ \ web-search \
 \ \ jsontools \
 \ \ macports \
 \ \ node \
 \ \ osx \
 \ \ sudo \
 \ \ thor \
 \ \ docker \
' .zshrc
