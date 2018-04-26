set -x PATH $HOME/.local/bin $PATH

set -x LANG en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -x LC_NUMERIC en_US.UTF-8
set -x LC_TIME en_US.UTF-8
set -x LC_COLLATE en_US.UTF-8
set -x LC_MONETARY en_US.UTF-8
set -x LC_MESSAGES en_US.UTF-8

# for python
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
. (pyenv init - | psub)

# for plenv
set -x PLENV_ROOT $HOME/.plenv
set -x PATH $PLENV_ROOT/bin $PATH
. (plenv init - | psub)
