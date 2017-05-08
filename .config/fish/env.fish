# for python
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
. (pyenv init - | psub)

# for go
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH
