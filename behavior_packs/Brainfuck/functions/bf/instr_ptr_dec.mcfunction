execute @e[tag=instr_ptr] ~~~ detect ~~-1~ concrete 0 tag @e[tag=instr_ptr] add at_start
execute @e[tag=instr_ptr,tag=!at_start] ~~~ tp @s ~1~~
#Move the instruction pointer only 1 block to the left if it's not above the start block
tag @e[tag=instr_ptr,tag=at_start] remove at_start