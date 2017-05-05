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

# neobundle
if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
     mkdir -p $HOME/.vim/bundle
     git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
fi

# pyenv
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi
