execute as @e[type=item,distance=..5] run tag @s add graves.item
execute as @e[type=experience_orb,distance=..5] run tag @s add graves.xp

forceload add ~ ~

summon marker ~ ~ ~ {data:{Inventory:[]},Tags:["graves.marker","graves.marker.new"]}
summon interaction ~.5 ~ ~.5 {width:1f,height:1f,response:1b,Tags:["graves.interaction","graves.interaction.new"]}
summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},billboard:"vertical",Tags:["graves.text","graves.text.new"],text:'[{"selector":"@p[scores={graves.death=1..}]"},{"text":"\'s Grave"}]'}
summon block_display ~ ~ ~ {block_state:{Name:"minecraft:mossy_cobblestone_wall"},Tags:["graves.block","graves.block.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1.0f,0.875f,1.0f]}}

execute if score glowing graves.settings matches 1 run data merge entity @n[tag=graves.block.new] {Glowing:1b}

execute as @n[tag=graves.interaction.new] store result score @s graves.id run scoreboard players get @p[scores={graves.death=1..}] graves.player.id

execute as @e[tag=graves.item,distance=..5] run data modify entity @n[tag=graves.marker.new] data.Inventory append from entity @s Item
kill @e[tag=graves.item,distance=..5]

scoreboard players set @n[tag=graves.interaction.new] graves.xp 0
execute as @e[tag=graves.xp,distance=..5] store result score @s graves.xp run data get entity @s Value
execute as @e[tag=graves.xp,distance=..5] run scoreboard players operation @n[tag=graves.interaction.new] graves.xp += @s graves.xp
kill @e[tag=graves.xp,distance=..5]

ride @n[tag=graves.marker.new] mount @n[tag=graves.interaction.new]
ride @n[tag=graves.text.new] mount @n[tag=graves.interaction.new]
ride @n[tag=graves.block.new] mount @n[tag=graves.interaction.new]

tag @n[tag=graves.marker.new] remove graves.marker.new
tag @n[tag=graves.interaction.new] remove graves.interaction.new
tag @n[tag=graves.text.new] remove graves.text.new
tag @n[tag=graves.block.new] remove graves.block.new