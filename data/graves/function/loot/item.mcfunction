summon item ~ ~ ~ {PickupDelay:0,Invulnerable:1b,Tags:["graves.loot.item"],Item:{id:"minecraft:stone_button",Count:1b}}
data modify entity @n[type=item,tag=graves.loot.item] Item set from entity @s data.Inventory[0]
tag @n[type=item,tag=graves.loot.item] remove graves.loot.item

data remove entity @s data.Inventory[0]
execute if data entity @s data.Inventory[0] run function graves:loot/item