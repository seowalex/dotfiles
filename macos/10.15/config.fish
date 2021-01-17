if status is-interactive
    and not set -q TMUX
    and not string match -q 'vscode' $TERM_PROGRAM
    tmux attach -t macos; or tmux new -s macos
end
