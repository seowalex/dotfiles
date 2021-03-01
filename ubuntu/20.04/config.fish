if status is-interactive
    and not set -q TMUX
    and not string match -q 'vscode' $TERM_PROGRAM
    tmux attach -t wsl; or tmux new -s wsl
end

alias open explorer.exe

set -gx DISPLAY (grep nameserver /etc/resolv.conf | awk '{print $2}'):0.0
set -gx LIBGL_ALWAYS_INDIRECT 0
set -gx LS_COLORS $LS_COLORS'ow=01;34:'

fish_add_path /usr/local/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path /opt/gradle/gradle-6.6.1/bin

fish_add_path $HOME/.nodenv/bin
status --is-interactive; and nodenv init - | source

fish_add_path $HOME/.rbenv/bin
status --is-interactive; and rbenv init - | source

eval /home/seowalex/miniconda3/bin/conda 'shell.fish' 'hook' $argv | source
