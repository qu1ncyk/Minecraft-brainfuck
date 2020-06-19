execute @e[tag=max_pointer] ~~~ tp @e[tag=pointer] ~~~
#Move pointer to max_pointer
function bf/internal/clear_byte
#Clear all bytes until pointer hits start
tag @e[tag=pointer,tag=at_start] remove at_start
execute @e[tag=pointer] ~~~ tp @e[tag=max_pointer] ~-1~~
#Move max_pointer next to pointer
scoreboard players set @a[tag=value] value 0