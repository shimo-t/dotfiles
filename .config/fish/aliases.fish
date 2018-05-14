alias refish '. $HOME/.config/fish/config.fish'

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
