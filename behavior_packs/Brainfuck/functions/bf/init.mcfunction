setblock ~~~2 concrete 0
summon armor_stand ~~1~2
execute @s ~~1~2 tag @e[r=1,type=armor_stand] add instr_ptr

setblock ~~3~2 concrete 0
summon armor_stand ~~4~2
execute @s ~~4~2 tag @e[r=1,type=armor_stand] add pointer

setblock ~-1~3~2 dirt
summon armor_stand ~-1~4~2
execute @s ~-1~4~2 tag @e[r=1,type=armor_stand,tag=!pointer] add max_pointer

tag @s add value
scoreboard objectives add value dummy
scoreboard objectives add temp dummy