if status is-interactive
    and not set -q TMUX
    and not string match -q 'vscode' $TERM_PROGRAM
    tmux attach -t bionic; or tmux new -s bionic
end

fish_add_path $HOME/.cargo/bin

bass source /usr/share/gazebo-9/setup.sh
bass source /opt/ros/melodic/setup.bash
bass source $HOME/bumblebee/ros/devel/setup.bash
