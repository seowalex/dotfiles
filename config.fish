# Disabled until https://github.com/mintty/wsltty/issues/197 is fixed
# if status is-interactive
# and not set -q TMUX
#     tmux attach -t wsl; or tmux new -s wsl
# end

alias open explorer.exe

set -gx EDITOR vim
set -gx LS_COLORS $LS_COLORS'ow=01;34:'

set -gx BD_OPT 'insensitive'

set -g FZF_DEFAULT_OPTS '--height 40% --reverse'
set -g FZF_COMPLETE 0
set -g FZF_LEGACY_KEYBINDINGS 0

starship init fish | source

set -gx PATH $HOME/.nodenv/bin $PATH
status --is-interactive; and nodenv init - | source

set -gx PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and rbenv init - | source

eval /home/seowalex/miniconda3/bin/conda "shell.fish" "hook" $argv | source

set -g fish_greeting

set -g fish_color_autosuggestion      brblack
set -g fish_color_cancel              -r
set -g fish_color_command             blue
set -g fish_color_comment             brmagenta
set -g fish_color_cwd                 green
set -g fish_color_cwd_root            red
set -g fish_color_end                 brmagenta
set -g fish_color_error               brred
set -g fish_color_escape              brcyan
set -g fish_color_history_current     --bold
set -g fish_color_host                normal
set -g fish_color_host_remote         yellow
set -g fish_color_match               --background=brblue
set -g fish_color_normal              normal
set -g fish_color_operator            cyan
set -g fish_color_param               brblue
set -g fish_color_quote               yellow
set -g fish_color_redirection         bryellow
set -g fish_color_search_match        bryellow --background=brblack
set -g fish_color_selection           white --bold --background=brblack
set -g fish_color_status              red
set -g fish_color_user                brgreen
set -g fish_color_valid_path          --underline
set -g fish_pager_color_completion    normal
set -g fish_pager_color_description   yellow
set -g fish_pager_color_prefix        white --bold --underline
set -g fish_pager_color_progress      brwhite --background=cyan
