alias refish 'source $HOME/.config/fish/config.fish'

alias l ls
alias ll 'ls -la'
alias la 'ls -A'

function vimf
  if count $argv > /dev/null
    fzf -1 -q $argv[1] | xargs -o vim
  else
    fzf | xargs -o vim
  end
end

function zf
  if count $argv > /dev/null
    z -l | fzf -1 +s -q $argv[1] | awk '{print $2}' | read -l recent; and cd $recent
  else
    z -l | fzf +s | awk '{print $2}' | read -l recent; and cd $recent
  end
end

function __just_a_dollar
  function fish_prompt
    echo -n '$ '
  end
end

function __agnoster
  function fish_prompt
    set -g RETVAL $status
    prompt_status
    prompt_virtual_env
    prompt_user
    prompt_dir
    type -q hg;  and prompt_hg
    type -q git; and prompt_git
    type -q svn; and prompt_svn
    prompt_finish
  end
end

function theme -d "Switch fish theme."
  switch $argv[1]
    case jad
      __just_a_dollar
    case agnoster
      __agnoster
    case default
      __agnoster
    case '*'
      echo "$argv[1] doesn't exist."
  end
end
