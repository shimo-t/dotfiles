#!/bin/bash
sudo apt update
sudo apt install xsel xclip

# git
if ! which git > /dev/null 2>&1; then
    sudo add-apt-repository ppa:git-core/ppa -y
    sudo apt update
    sudo apt install git
fi

# dracula colorscheme for gnome terminal
# if [ ! -d  ~/.dir_colors ]; then
#     git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula $HOME/gnome-terminal-colors-dracula
#     $HOME/gnome-terminal-colors-dracula/install.sh
#     rm -rf $HOME/gnome-terminal-colors-dracula
# fi

# golang
if ! which go > /dev/null 2>&1; then
    sudo apt install golang -y
fi

# vim
if ! which vim > /dev/null 2>&1; then
    sudo apt install vim vim-gnome
fi

# ag
if ! which ag > /dev/null 2>&1; then
    sudo apt install silversearcher-ag
fi

# rg
if ! which ag > /dev/null 2>&1; then
    sudo apt install ripgrep
fi

# fzf
if ! which fzf > /dev/null 2>&1; then
    # sudo apt install fzf
    # install manually for latest version
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
    $HOME/.fzf/install
    ln -s $HOME/.fzf/bin/* $HOME/.local/bin/
fi

# fd
if ! which fd > /dev/null 2>&1; then
    sudo apt install fd-find
    ln -s $(which fdfind) $HOME/.local/bin/fd
fi

# bat
if ! which bat > /dev/null 2>&1; then
    sudo apt install bat
    ln -s $(which batcat) $HOME/.local/bin/bat
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
    echo "fisher install PatrickF1/fzf.fish jethrokuan/z oh-my-fish/theme-bobthefish" | fish
fi

# asdf
if [ ! -d ~/.asdf ]; then
    git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.13.1
    mkdir -p $HOME/.config/fish/completions; and ln -s $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions
fi

# tpm
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

# powerline
# if ! which powerline-daemon > /dev/null 2>&1; then
#     pyenv install miniconda2-4.1.11
#     pyenv global miniconda2-4.1.11
#     pip install --user powerline-status
#
#     git clone https://github.com/powerline/fonts.git $HOME/fonts
#     $HOME/fonts/install.sh
#     rm -rf $HOME/fonts
# fi
