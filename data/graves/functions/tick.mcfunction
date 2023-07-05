execute as @a if score @s graves.death matches 1.. at @s if entity @e[type=item,distance=..5,tag=!graves.item] align xyz run function graves:death

execute as @e[tag=graves.interaction] at @s if data entity @s interaction run function graves:check_owner

scoreboard players reset @a[scores={graves.death=1..}] graves.death

execute unless score load graves.settings matches 1 run function graves:settings/reset