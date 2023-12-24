set -gx PATH $HOME/.local/bin $PATH

set -gx LANG en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8
set -gx LC_NUMERIC en_US.UTF-8
set -gx LC_TIME en_US.UTF-8
set -gx LC_COLLATE en_US.UTF-8
set -gx LC_MONETARY en_US.UTF-8
set -gx LC_MESSAGES en_US.UTF-8

set -g theme_color_scheme dracula

# for fzf
set -gx FZF_DEFAULT_OPTS '--height 50% --reverse'
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
# set -gx FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -gx FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_REVERSE_ISEARCH_OPTS '--no-sort'

# for asdf
source $HOME/.asdf/asdf.fish

# ssh-agent
eval (ssh-agent -c)
