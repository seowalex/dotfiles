if status is-interactive
    and not set -q TMUX
    and not string match -q 'vscode' $TERM_PROGRAM
    tmux attach -t wsl; or tmux new -s wsl
end

alias open explorer.exe

set -gx DISPLAY (grep nameserver /etc/resolv.conf | awk '{print $2}'):0.0
set -gx LIBGL_ALWAYS_INDIRECT 0
set -gx LS_COLORS $LS_COLORS'ow=01;34:'

bass source /usr/share/gazebo-9/setup.sh
bass source /opt/ros/melodic/setup.bash
bass source $HOME/bumblebee/ros/devel/setup.bash
