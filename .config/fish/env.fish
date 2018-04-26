set -gx PATH $HOME/.local/bin $PATH

set -gx LANG en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8
set -gx LC_NUMERIC en_US.UTF-8
set -gx LC_TIME en_US.UTF-8
set -gx LC_COLLATE en_US.UTF-8
set -gx LC_MONETARY en_US.UTF-8
set -gx LC_MESSAGES en_US.UTF-8

# for python
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
. (pyenv init - | psub)

# for plenv
set -gx PLENV_ROOT $HOME/.plenv
set -gx PATH $PLENV_ROOT/bin $PATH
. (plenv init - | psub)
