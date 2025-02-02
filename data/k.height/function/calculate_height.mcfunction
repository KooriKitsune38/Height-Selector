scoreboard players set .defaultHeight height 185
scoreboard players set .scaleMultiplier height 10000
scoreboard players operation .temp height = @s height

scoreboard players operation @s height *= .scaleMultiplier height
execute store result storage k.temp:temp height float 0.0001 run scoreboard players operation @s height /= .defaultHeight height

tellraw @a {"score":{"name": "@s","objective": "height"}}

data modify storage k.temp:temp speed set value 0.1f
execute if score @s height matches 10160.. store result storage k.temp:temp speed float 0.0000095 run scoreboard players get @s height
execute if score @s height matches ..8650 store result storage k.temp:temp speed float 0.0000145 run scoreboard players get @s height

function k.height:set_height with storage k.temp:temp

tellraw @a {"storage": "k.temp:temp","nbt":"speed"}