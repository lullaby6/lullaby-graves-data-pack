tp @s ~ 1000 ~
data merge entity @s {NoGravity:1b,PickupDelay:32767,Invulnerable:1b,Motion:[0.0,0.0,0.0]}
tag @s remove graves.item
tag @s add graves.loot.item.teleported