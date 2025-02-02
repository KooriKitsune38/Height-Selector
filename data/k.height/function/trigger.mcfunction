execute unless score @s height matches 120..210 unless score @s height matches ..-1 run tellraw @s [{"text":"| ","color":"gray"},{"text":"Accepted values are from ","color":"#f2929a"},{"text":"120cm","color":"white"},{"text":" to ","color":"#f2929a"},{"text":"210cm","color":"white"}]

tellraw @s[predicate=k.height:help] [{"text":"","underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger height set 0"},"hoverEvent": {"action": "show_text","contents": "Click to paste the command in chat."}},{"text":"| ","color":"gray","underlined": false},{"text":"Usage: ","color":"#ef7a85","underlined": false},{"text":"/trigger height set ","color":"#f2929a"},{"text":"centimetres","color":"white"}]

execute if score @s height matches 120..210 run function k.height:calculate_height

scoreboard players reset @s height