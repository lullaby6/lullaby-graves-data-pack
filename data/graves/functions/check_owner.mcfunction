execute if score owner graves.settings matches 1 if score @s graves.id = @p mcalc.player_id run function graves:drop
execute if score owner graves.settings matches 0 run function graves:drop

data remove entity @s interaction