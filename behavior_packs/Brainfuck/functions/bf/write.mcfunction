scoreboard players operation @a[tag=value] temp = @a[tag=value] value
#Copy the value objective to a temporary objective
execute @e[tag=pointer] ~~~ fill ~~~1 ~~~8 dirt
#Clear the byte
execute @a[tag=value,scores={temp=128..255}] ~~~ function bf/internal/write/128
execute @a[tag=value,scores={temp=64..127}] ~~~ function bf/internal/write/64
execute @a[tag=value,scores={temp=32..63}] ~~~ function bf/internal/write/32
execute @a[tag=value,scores={temp=16..31}] ~~~ function bf/internal/write/16
execute @a[tag=value,scores={temp=8..15}] ~~~ function bf/internal/write/8
execute @a[tag=value,scores={temp=4..7}] ~~~ function bf/internal/write/4
execute @a[tag=value,scores={temp=2..3}] ~~~ function bf/internal/write/2
execute @a[tag=value,scores={temp=1}] ~~~ function bf/internal/write/1
#Write every bit