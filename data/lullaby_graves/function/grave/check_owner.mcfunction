execute if score owner lullaby_graves.settings matches 1 if score @s lullaby_graves.id = @p utils.player.id run function lullaby_graves:loot/spawn
execute if score owner lullaby_graves.settings matches 0 run function lullaby_graves:loot/spawn

data remove entity @s interaction