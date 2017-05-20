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
brew install ffmpeg

# pyenv
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi
