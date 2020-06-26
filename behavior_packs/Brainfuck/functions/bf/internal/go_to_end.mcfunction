#Called by clear_script
function bf/instr_ptr_inc
execute @e[tag=instr_ptr] ~~~ detect ~-1~-1~ concrete -1 function bf/internal/go_to_end