#Called by mem_reset
function bf/pointer_dec
#Decrement the pointer
execute @e[tag=pointer] ~~~ fill ~~~1 ~~~8 dirt
#Clear the byte
tag @e[tag=pointer,tag=at_start] remove at_start
execute @e[tag=pointer] ~~~ detect ~~-1~ concrete 0 tag @s add at_start
#Test if pointer is at start (concrete 0 is start)
execute @e[tag=pointer,tag=!at_start] ~~~ function bf/internal/clear_byte
#Repeat if pointer is not at start