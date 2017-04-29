#!/bin/bash
sudo apt-get update

# git
if ! which git > /dev/null 2>&1; then
    sudo add-apt-repository ppa:git-core/ppa -y
    sudo apt-get update
    sudo apt-get install git
fi

# solarized colorscheme for gnome terminal
if [ ! -d  ~/.dir_colors ]; then
    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git $HOME/gnome-terminal-colors-solarized
    $HOME/gnome-terminal-colors-solarized/install.sh --install-dircolors
    rm -rf $HOME/gnome-terminal-colors-solarized
    rm $DOTPATH/dircolors
fi

# golang
if ! which go > /dev/null 2>&1; then
    sudo apt-get install golang -y
fi

# vim
if ! which vim > /dev/null 2>&1; then
    sudo apt-get install vim vim-gnome
fi

# neobundle
if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
     mkdir -p $HOME/.vim/bundle
     git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
fi

# tmux
if ! which tmux > /dev/null 2>&1; then
    sudo apt-get install tmux
fi

# pyenv
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi

