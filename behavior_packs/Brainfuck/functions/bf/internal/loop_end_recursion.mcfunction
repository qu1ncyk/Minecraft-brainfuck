#Called by loop_end
function bf/instr_ptr_dec
execute @e[tag=instr_ptr] ~~~ detect ~~-1~ concrete 8 scoreboard players add @a[tag=value] temp 1
#Increment the temporary score if the instruction pointer is above ]
execute @e[tag=instr_ptr] ~~~ detect ~~-1~ concrete 7 scoreboard players remove @a[tag=value] temp 1
#Decrement the temporary score if the instruction pointer is above [
execute @a[tag=value,scores={temp=1..}] ~~~ function bf/internal/loop_end_recursion
#Rerun all of this if the temporary score is >=1