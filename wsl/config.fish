alias open wslview

eval (dircolors -c)

set -gx DISPLAY (grep nameserver /etc/resolv.conf | awk '{print $2}'):0.0
set -gx LIBGL_ALWAYS_INDIRECT 0
set -gx LS_COLORS $LS_COLORS'ow=01;34:'
