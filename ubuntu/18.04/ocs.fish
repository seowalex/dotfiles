function ocs -a toggle vehicle
    function usage
        echo 'ocs <on |off> <auv3 | auv4>'
        functions -e usage
    end

    switch $toggle
        case off
            if test (count $argv) -ne 1
                usage
                return 1
            end
            set -x ROS_MASTER_URI http://localhost:11311
        case on
            if test (count $argv) -gt 2
                usage
                return 1
            end

            switch $vehicle
                case auv3
                    set -x ROS_MASTER_URI http://192.168.1.130:11311
                case auv4
                    set -x ROS_MASTER_URI http://192.168.1.150:11311
                case '*'
                    usage
                    return 1
            end
        case '*'
            usage
            return 1
    end

    if set -q TMUX
        tmux setenv ROS_MASTER_URI $ROS_MASTER_URI
    end
end
