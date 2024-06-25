summon item ~ ~ ~ {PickupDelay:0,Invulnerable:1b,Tags:["lullaby_graves.loot.item"],Item:{id:"minecraft:stone_button",Count:1b}}
data modify entity @e[type=item,tag=lullaby_graves.loot.item,limit=1,sort=nearest] Item set from entity @s data.Inventory[0]
tag @e[type=item,tag=lullaby_graves.loot.item,limit=1,sort=nearest] remove lullaby_graves.loot.item

data remove entity @s data.Inventory[0]
execute if data entity @s data.Inventory[0] run function lullaby_graves:loot/item