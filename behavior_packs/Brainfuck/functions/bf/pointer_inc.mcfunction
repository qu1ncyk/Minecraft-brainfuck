execute @e[tag=pointer] ~~~ tp @s ~-1~~
execute @e[tag=pointer] ~~~ execute @e[tag=max_pointer,rm=0,r=0.5] ~~~ function bf/internal/move_max_pointer
#Move max_pointer if max_pointer and pointer are (almost) in the same location
function bf/read