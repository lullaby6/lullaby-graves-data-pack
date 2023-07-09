execute if score owner graves.settings matches 1 if score @s graves.id = @p mcalc.player_id run function graves:loot/spawn
execute if score owner graves.settings matches 0 run function graves:loot/spawn

data remove entity @s interaction