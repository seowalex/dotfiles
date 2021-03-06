if status is-interactive
    and not set -q TMUX
    and not string match -q 'vscode' $TERM_PROGRAM
    tmux attach -t focal; or tmux new -s focal
end

fish_add_path /usr/local/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path /opt/gradle/gradle-6.6.1/bin

fish_add_path $HOME/.nodenv/bin
status --is-interactive; and nodenv init - | source

fish_add_path $HOME/.rbenv/bin
status --is-interactive; and rbenv init - | source

eval /home/seowalex/miniconda3/bin/conda 'shell.fish' 'hook' $argv | source
