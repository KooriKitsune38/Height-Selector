$tellraw @s [{"text":"| ","color":"gray"},{"text":"Height set to: ","color":"#f2929a"},{"score":{"objective":"height","name":".temp"},"color":"white","hoverEvent":{"action": "show_text","contents":[{"text":"Scale Multiplier: ","color":"#ef7a85"},{"text":"$(height)","color":"white"}]}},{"text":"cm","color":"white"}]

execute at @s run function k.height:change_sound

$attribute @s minecraft:generic.scale base set $(height)
$attribute @s minecraft:generic.movement_speed base set $(speed)