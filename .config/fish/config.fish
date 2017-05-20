# for python
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
. (pyenv init - | psub)

# for go
switch (uname)
    case Linux
        set -x GOPATH $HOME/.go
        set -x PATH $GOPATH/bin $PATH
    case Darwin
        set -x GOROOT /usr/local/opt/go/libexec
        set -x GOPATH $HOME/.go
        set -x PATH $GOPATH/bin $PATH
        set -x PATH $GOROOT/bin $PATH
end
