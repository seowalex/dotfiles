function ocs -a toggle vehicle
    switch $toggle
        case off
            if test (count $argv) -ne 1
                echo '"ocs off" does not take any arguments' >&2
                return 1
            end

            set ROS_MASTER_URI http://localhost:11311
        case on
           if test (count $argv) -gt 2
               echo '"ocs on" only takes one argument'
               return 1
           end

           switch $vehicle
               case auv3
                   set ROS_MASTER_URI http://192.168.1.130:11311
               case auv4
                   set ROS_MASTER_URI http://192.168.1.150:11311
               case '*'
                   echo '"ocs on" only takes the argument "auv3" or "auv4"'
                   return 1
           end
        case '*'
            'Only "ocs on" or "ocs off" can be specified'
            return 1
    end
end
