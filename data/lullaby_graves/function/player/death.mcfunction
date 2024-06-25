execute at @s if entity @e[type=item,distance=..5,tag=!lullaby_graves.item] align xyz run function lullaby_graves:grave/spawn

scoreboard players reset @s lullaby_graves.death