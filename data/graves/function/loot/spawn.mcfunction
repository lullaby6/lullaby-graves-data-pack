particle cloud ~ ~ ~ 0 0 0 0.125 10 force @a
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 10

execute on passengers if entity @s[tag=graves.marker] run function graves:loot/item

execute if score @s graves.xp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["graves.loot.xp"],Invulnerable:1b}
execute store result entity @e[tag=graves.loot.xp,limit=1,sort=nearest] Value short 1 run scoreboard players get @s graves.xp
tag @e[tag=graves.loot.xp,limit=1,sort=nearest] remove graves.loot.xp

execute on passengers run kill @s
kill @s