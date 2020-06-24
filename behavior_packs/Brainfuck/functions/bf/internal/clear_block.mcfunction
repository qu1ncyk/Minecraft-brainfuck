#Called by clear_script
tag @e[tag=instr_ptr,tag=at_start] remove at_start
setblock ~~-1~ air
function bf/instr_ptr_dec
execute @e[tag=instr_ptr] ~~~ detect ~~-1~ concrete 0 tag @s add at_start
execute @e[tag=instr_ptr,tag=!at_start] ~~~ function bf/internal/clear_block