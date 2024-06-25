execute as @e[type=item,distance=..5] run tag @s add lullaby_graves.item
execute as @e[type=experience_orb,distance=..5] run tag @s add lullaby_graves.xp

summon marker ~ ~ ~ {data:{Inventory:[]},Tags:["lullaby_graves.marker","lullaby_graves.marker.new"]}
summon interaction ~.5 ~ ~.5 {width:1f,height:1f,response:1b,Tags:["lullaby_graves.interaction","lullaby_graves.interaction.new"]}
summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},billboard:"vertical",Tags:["lullaby_graves.text","lullaby_graves.text.new"],text:'[{"selector":"@p[scores={lullaby_graves.death=1..}]"},{"text":"\'s Grave"}]'}
summon block_display ~ ~ ~ {block_state:{Name:"minecraft:mossy_cobblestone_wall"},Tags:["lullaby_graves.block","lullaby_graves.block.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1.0f,0.875f,1.0f]}}

execute if score glowing lullaby_graves.settings matches 1 run data merge entity @n[tag=lullaby_graves.block.new] {Glowing:1b}

execute as @e[tag=lullaby_graves.interaction.new,limit=1,sort=nearest] store result score @s lullaby_graves.id run scoreboard players get @p[scores={lullaby_graves.death=1..}] utils.player.id

execute as @e[tag=lullaby_graves.item,distance=..5] run data modify entity @n[tag=lullaby_graves.marker.new] data.Inventory append from entity @s Item
kill @e[tag=lullaby_graves.item,distance=..5]

scoreboard players set @e[tag=lullaby_graves.interaction.new,limit=1,sort=nearest] lullaby_graves.xp 0
execute as @e[tag=lullaby_graves.xp,distance=..5] store result score @s lullaby_graves.xp run data get entity @s Value
execute as @e[tag=lullaby_graves.xp,distance=..5] run scoreboard players operation @n[tag=lullaby_graves.interaction.new] lullaby_graves.xp += @s lullaby_graves.xp
kill @e[tag=lullaby_graves.xp,distance=..5]

ride @n[tag=lullaby_graves.marker.new] mount @n[tag=lullaby_graves.interaction.new]
ride @n[tag=lullaby_graves.text.new] mount @n[tag=lullaby_graves.interaction.new]
ride @n[tag=lullaby_graves.block.new] mount @n[tag=lullaby_graves.interaction.new]

tag @n[tag=lullaby_graves.marker.new] remove lullaby_graves.marker.new
tag @n[tag=lullaby_graves.interaction.new] remove lullaby_graves.interaction.new
tag @n[tag=lullaby_graves.text.new] remove lullaby_graves.text.new
tag @n[tag=lullaby_graves.block.new] remove lullaby_graves.block.new