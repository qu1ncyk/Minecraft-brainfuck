execute @e[tag=pointer] ~~~ detect ~~-1~ concrete 0 function bf/internal/at_start
#Test if pointer is at start (concrete 0 is start)
execute @e[tag=pointer,tag=!at_start] ~~~ tp @s ~1~~
#Move pointer if it's not at start
tag @e[tag=pointer,tag=at_start] remove at_start
function bf/read