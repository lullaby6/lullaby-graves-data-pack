particle cloud ~ ~ ~ 0 0 0 0.125 10 force @a
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 10

execute on passengers if entity @s[tag=lullaby_graves.marker] run function lullaby_graves:loot/item

execute if score @s lullaby_graves.xp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["lullaby_graves.loot.xp"],Invulnerable:1b}
execute store result entity @e[tag=lullaby_graves.loot.xp,limit=1,sort=nearest] Value short 1 run scoreboard players get @s lullaby_graves.xp
tag @e[tag=lullaby_graves.loot.xp,limit=1,sort=nearest] remove lullaby_graves.loot.xp

execute on passengers run kill @s
kill @s