set fish_greeting
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

# peco
function peco_select_history
  if test (count $argv) = 0
    set peco_flags
  else
    set peco_flags --query "$argv"
  end

  history | peco $peco_flags | read foo

  if [ $foo ]
    commandline $foo
  else
    commandline ''
  end
end

function peco_z
  set -l query (commandline)

  if test -n $query
    set peco_flags --query "$query"
  end

  z -l | peco $peco_flags | awk '{ print $2 }' | read recent
  if [ $recent ]
    cd $recent
    commandline -r ''
    commandline -f repaint
  end
end

function fish_user_key_bindings
  bind \cr peco_select_history
  bind \x1b peco_z
end
