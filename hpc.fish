function hpc -a cluster
    function usage
        echo 'hpc <atlas6 | atlas7 | atlas8 | atlas9>'
        functions -e usage
    end

    if test (count $argv) -ne 1
        usage
        return 1
    end

    if op get item NUSNET --fields password
        sshpass -f (op get item NUSNET --fields password | psub) ssh "e0406243@$cluster.nus.edu.sg"
    else
        eval (op signin)

        if op get item NUSNET --fields password
            sshpass -f (op get item NUSNET --fields password | psub) ssh "e0406243@$cluster.nus.edu.sg"
        end
    end
end
