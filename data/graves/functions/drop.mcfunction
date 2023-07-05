particle cloud ~ ~ ~ 0 0 0 0.125 10 force @a
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 10

#execute on passengers if entity @s[tag=graves.marker] run function graves:item
#tag @e[tag=graves.item.new] remove graves.item.new

execute positioned ~ 1000 ~ run tp @e[tag=graves.item.teleported,distance=..0.75] @s
execute as @e[tag=graves.item.teleported,distance=..0.75] run data merge entity @s {PickupDelay:0,Invulnerable:1b,NoGravity:0b,Motion:[0.0,0.25,0.0]}
tag @e[tag=graves.item.teleported,distance=..0.75] remove graves.item.teleported

execute if score @s graves.xp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["graves.xp.new"],Invulnerable:1b}
execute store result entity @e[tag=graves.xp.new,limit=1,sort=nearest] Value short 1 run scoreboard players get @s graves.xp
tag @e[tag=graves.xp.new,limit=1,sort=nearest] remove graves.xp.new

execute on passengers run kill @s
kill @s