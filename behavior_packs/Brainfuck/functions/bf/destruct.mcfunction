function bf/reset
execute @e[tag=pointer] ~~~ setblock ~~-1~ air
kill @e[tag=pointer]
execute @e[tag=max_pointer] ~~~ setblock ~~-1~ air
kill @e[tag=max_pointer]
function bf/clear_script
execute @e[tag=instr_ptr] ~~~ setblock ~~-1~ air
kill @e[tag=instr_ptr]
scoreboard objectives remove value
scoreboard objectives remove temp
tag @a[tag=value] remove value