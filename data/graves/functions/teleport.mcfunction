data merge entity @s {Motion:[0.0,0.0,0.0]}
tp @s ~ ~ ~
data merge entity @s {NoGravity:1b,PickupDelay:32767,Invulnerable:1b}
tag @s remove graves.item
tag @s add graves.item.teleported
tp @s ~ 1000 ~