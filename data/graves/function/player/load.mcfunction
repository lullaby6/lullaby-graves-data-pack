tag @s add graves.player.load

execute store result score @s graves.player.id run scoreboard players get .id graves.player.id

scoreboard players add .id graves.player.id 1