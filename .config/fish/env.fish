set -gx PATH $HOME/.local/bin $PATH

set -gx LANG en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8
set -gx LC_NUMERIC en_US.UTF-8
set -gx LC_TIME en_US.UTF-8
set -gx LC_COLLATE en_US.UTF-8
set -gx LC_MONETARY en_US.UTF-8
set -gx LC_MESSAGES en_US.UTF-8

set -gx theme_color_scheme dracula

# for bat
set -gx BAT_CONFIG_PATH $HOME/.bat.conf

# for fzf
set -gx FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --preview "fzf-preview.sh {} 2> /dev/null || ls {}" --marker="*"'
set -gx FZF_DEFAULT_COMMAND 'fd --hidden'

# for PatrickF1/fzf.fish
fzf_configure_bindings --directory=\co --git_status=\cs
set -gx fzf_fd_opts --hidden

# for asdf
source $HOME/.asdf/asdf.fish

# ssh-agent
eval (ssh-agent -c > /dev/null 2>&1)
