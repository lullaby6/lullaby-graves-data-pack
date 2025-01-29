execute if score owner graves.settings matches 1 if score @s graves.id = @p utils.player.id run function graves:loot/spawn
execute if score owner graves.settings matches 0 run function graves:loot/spawn

data remove entity @s interaction