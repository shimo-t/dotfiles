set -gx PATH $HOME/.local/bin $PATH

set -gx LANG en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8
set -gx LC_NUMERIC en_US.UTF-8
set -gx LC_TIME en_US.UTF-8
set -gx LC_COLLATE en_US.UTF-8
set -gx LC_MONETARY en_US.UTF-8
set -gx LC_MESSAGES en_US.UTF-8

# for fzf
set -gx FZF_DEFAULT_OPTS '--height 50% --reverse'
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
# set -gx FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -gx FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_REVERSE_ISEARCH_OPTS '--no-sort'

# anyenv
set -gx ANYENV_ROOT $HOME/.anyenv
set -gx PATH $ANYENV_ROOT/bin $PATH
. (anyenv init - | psub)

# for python
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
. (pyenv init - | psub)

# for golang
set -gx GOENV_ROOT $HOME/.goenv
set -gx PATH $GOENV_ROOT/bin $PATH
. (goenv init - | psub)

# for plenv
set -gx PLENV_ROOT $HOME/.plenv
set -gx PATH $PLENV_ROOT/bin $PATH
. (plenv init - | psub)
