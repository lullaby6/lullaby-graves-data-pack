function graves:utils/clear_chat

tellraw @s [{"text":"Graves ","color":"green"},{"text":"Settings:","color":"gray"}]

execute if score owner graves.settings matches 1 run tellraw @s [{"text":"- Owner: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function graves:settings/owner/no"}}]
execute if score owner graves.settings matches 0 run tellraw @s [{"text":"- Owner: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function graves:settings/owner/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score glowing graves.settings matches 1 run tellraw @s [{"text":"- Glowing: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function graves:settings/glowing/no"}}]
execute if score glowing graves.settings matches 0 run tellraw @s [{"text":"- Glowing: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function graves:settings/glowing/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Settings","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/reset"}}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2