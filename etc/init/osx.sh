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
brew install reattach-to-user-namespace

brew install fish

curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
echo "fisher install z omf/theme-agnoster" | fish

# pyenv
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi

# powerline
if ! which powerline-daemon > /dev/null 2>&1; then
    pyenv install miniconda2-4.1.11
    pyenv global miniconda2-4.1.11
    pip install --user powerline-status

    git clone https://github.com/powerline/fonts.git $HOME/fonts
    $HOME/fonts/install.sh
    rm -rf $HOME/fonts
fi
