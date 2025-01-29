execute as @a if score @s graves.death matches 1.. run function graves:player/death

execute as @e[tag=graves.interaction] at @s if data entity @s interaction run function graves:grave/check_owner