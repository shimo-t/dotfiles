#!/bin/bash
sudo apt update

# git
if ! which git > /dev/null 2>&1; then
    sudo add-apt-repository ppa:git-core/ppa -y
    sudo apt update
    sudo apt install git
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
    sudo apt install golang -y
fi

# vim
if ! which vim > /dev/null 2>&1; then
    sudo apt install vim vim-gnome
fi

# vim
if ! which ag > /dev/null 2>&1; then
    sudo apt install silversearcher-ag
fi

# tmux
if ! which tmux > /dev/null 2>&1; then
    sudo apt install tmux
fi

# peco
if ! which peco > /dev/null 2>&1; then
  curl -sL 'https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_amd64.tar.gz' | \
  sudo tar xz -C /usr/local/bin --strip=1 --wildcards '*/peco' --no-same-owner --no-same-permissions
fi

# fish and fisherman
if ! which fish > /dev/null 2>&1; then
    sudo apt install fish
    curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
    echo "fisher z" | fish
fi

# pyenv
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi
