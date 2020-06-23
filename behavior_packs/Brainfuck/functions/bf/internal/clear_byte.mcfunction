#Called by mem_reset
function bf/pointer_dec
#Decrement the pointer
execute @e[tag=pointer] ~~~ fill ~~~1 ~~~8 air
#Clear the byte
execute @e[tag=pointer] ~~~ setblock ~-2~-1~ air
tag @e[tag=pointer,tag=at_start] remove at_start
execute @e[tag=pointer] ~~~ detect ~~-1~ concrete 0 tag @s add at_start
#Test if pointer is at start (concrete 0 is start)
execute @e[tag=pointer,tag=!at_start] ~~~ function bf/internal/clear_byte
#Repeat if pointer is not at start