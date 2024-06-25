function utils:player/clear_chat

tellraw @s [{"text":"==== ","color":"gray"},{"text":"Lullaby's Graves Settings ","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}},{"text":"====","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}}]

tellraw @s {"text":"- Glowing:","color":"gray"}
execute if score glowing lullaby_graves.settings matches 1 run tellraw @s [{"text":"YES","color":"dark_green","bold":true},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function lullaby_graves:settings/glowing/no"}}]
execute if score glowing lullaby_graves.settings matches 0 run tellraw @s [{"text":"YES","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function lullaby_graves:settings/glowing/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"dark_green","bold":true}]

tellraw @s {"text":"- Owner:","color":"gray"}
execute if score owner lullaby_graves.settings matches 1 run tellraw @s [{"text":"YES","color":"dark_green","bold":true},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function lullaby_graves:settings/owner/no"}}]
execute if score owner lullaby_graves.settings matches 0 run tellraw @s [{"text":"YES","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function lullaby_graves:settings/owner/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"dark_green","bold":true}]

tellraw @s {"text":"- Reset Settings","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]},"clickEvent":{"action":"run_command","value":"/function lullaby_graves:settings/reset"}}

tellraw @s [{"text":"===================================","color":"gray"}]


playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2