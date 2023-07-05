loot spawn ~ ~ ~ loot minecraft:blocks/stone_button
data modify entity @e[type=item,tag=!graves.item.new,limit=1,sort=nearest] Item set from entity @s data.Inventory[0]
data merge entity @e[type=item,tag=!graves.item.new,limit=1,sort=nearest] {PickupDelay:0,Invulnerable:1b,Motion:[0.0,0.5,0.0]}
tag @e[type=item,tag=!graves.item.spawn.new,limit=1,sort=nearest] add graves.item.new

data remove entity @s data.Inventory[0]
execute if data entity @s data.Inventory[0] run function graves:item