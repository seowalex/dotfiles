function hpc
    if op get item NUSNET --fields password
        sshpass -p (op get item NUSNET --fields password) ssh $argv
    else
        eval (op signin)

        if op get item NUSNET --fields password
            sshpass -p (op get item NUSNET --fields password) ssh $argv
        end
    end
end
