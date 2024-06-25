execute as @a if score @s lullaby_graves.death matches 1.. run function lullaby_graves:player/death

execute as @e[tag=lullaby_graves.interaction] at @s if data entity @s interaction run function lullaby_graves:grave/check_owner

execute unless score load lullaby_graves.settings matches 1 run function lullaby_graves:settings/reset