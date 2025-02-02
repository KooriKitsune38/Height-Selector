execute store result score .temp height run attribute @s minecraft:generic.scale base get 1000
scoreboard players set .10 height 10
scoreboard players operation @s height /= .10 height

execute if score .temp height < @s height run playsound entity.puffer_fish.blow_up player @a ~ ~ ~ 1 1.1
execute if score .temp height > @s height run playsound entity.puffer_fish.blow_out player @a ~ ~ ~ 1 0.9
execute if score .temp height = @s height run playsound minecraft:entity.cat.purreow player @a ~ ~ ~ 1 1