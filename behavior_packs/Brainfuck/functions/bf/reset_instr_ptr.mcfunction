tag @e[tag=instr_ptr,tag=at_start] remove at_start
function bf/instr_ptr_dec
execute @e[tag=instr_ptr] ~~~ detect ~~-1~ concrete 0 tag @e[tag=instr_ptr] add at_start
#concrete 0 = start
execute @e[tag=instr_ptr,tag=!at_start] ~~~ function bf/reset_instr_ptr
#Rerun all of this if the instruction pointer is not at start