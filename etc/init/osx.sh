#!/bin/bash
if ! which brew > /dev/null 2>&1; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if which brew > /dev/null 2>&1; then
    brew doctor
fi

brew update

formulas=(
    coreutils
    tree
    git
    hub
    tmux
    # peco
    fzf
    ffmpeg
    the_silver_searcher
    reattach-to-user-namespace
    perl-build
)

for formula in "${formulas[@]}"; do
    if ! which $formula > /dev/null 2>&1; then
        brew install $formula
    fi
done

# fish
if ! which fish > /dev/null 2>&1; then
    brew install fish

    curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
    echo "fisher install z fzf git_util" | fish
fi

# asdf
if [ ! -d ~/.asdf ]; then
    git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.13.1
    mkdir -p $HOME/.config/fish/completions; and ln -s $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions
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
