#!/bin/bash
if ! which brew > /dev/null 2>&1; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if which brew > /dev/null 2>&1; then
    brew doctor
fi

brew update

brew install coreutils
brew install tree

brew install git
brew install tmux
brew install peco
brew install ffmpeg
brew install the_silver_searcher

brew install fish

curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
echo "fisher z" | fish

# pyenv
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi
