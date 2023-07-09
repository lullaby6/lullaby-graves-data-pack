execute at @s if entity @e[type=item,distance=..5,tag=!graves.item] align xyz run function graves:grave/spawn

scoreboard players reset @s graves.death