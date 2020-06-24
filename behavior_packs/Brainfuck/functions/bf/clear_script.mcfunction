function bf/reset
execute @e[tag=instr_ptr] ~~~ detect ~-1~-1~ concrete -1 function bf/internal/go_to_end
execute @e[tag=instr_ptr] ~~~ detect ~~-1~ concrete 0 tag @s add at_start
execute @e[tag=instr_ptr,tag=!at_start] ~~~ function bf/internal/clear_block
tag @e[tag=instr_ptr,tag=at_start] remove at_start