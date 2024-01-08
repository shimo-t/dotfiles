alias refish 'source $HOME/.config/fish/config.fish'

alias l ls
alias ll 'ls -la'
alias la 'ls -A'

alias rg 'rg --hidden --glob=!.git/'

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

function gitcof -d "Git checkout with fzf"
  if count $argv > /dev/null
    git checkout (git branch | fzf -1 +s -q $argv[1] | tr -d ' ' | tr -d '*')
  else
    git checkout (git branch | fzf | tr -d ' ' | tr -d '*')
  end
end
