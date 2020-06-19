scoreboard players set @a[tag=value] value 0
#Reset the value objective
execute @e[tag=pointer] ~~~ detect ~~~1 stone 0 scoreboard players add @a[tag=value] value 1
execute @e[tag=pointer] ~~~ detect ~~~2 stone 0 scoreboard players add @a[tag=value] value 2
execute @e[tag=pointer] ~~~ detect ~~~3 stone 0 scoreboard players add @a[tag=value] value 4
execute @e[tag=pointer] ~~~ detect ~~~4 stone 0 scoreboard players add @a[tag=value] value 8
execute @e[tag=pointer] ~~~ detect ~~~5 stone 0 scoreboard players add @a[tag=value] value 16
execute @e[tag=pointer] ~~~ detect ~~~6 stone 0 scoreboard players add @a[tag=value] value 32
execute @e[tag=pointer] ~~~ detect ~~~7 stone 0 scoreboard players add @a[tag=value] value 64
execute @e[tag=pointer] ~~~ detect ~~~8 stone 0 scoreboard players add @a[tag=value] value 128
#Check every bit and add it to the value objective