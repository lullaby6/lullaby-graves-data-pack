data remove entity @s interaction

execute if score owner graves.settings matches 1 if score @s graves.id = @p graves.player.id run return run function graves:loot/spawn

execute if score owner graves.settings matches 0 run return run function graves:loot/spawn