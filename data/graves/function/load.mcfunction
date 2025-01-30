scoreboard objectives add graves.death deathCount
scoreboard objectives add graves.xp dummy
scoreboard objectives add graves.id dummy

scoreboard objectives add graves.settings dummy
execute unless score load graves.settings matches 1 run function graves:settings/reset

scoreboard objectives add graves.player.id dummy
execute unless score .id graves.player.id matches 1.. run scoreboard players set .id graves.player.id 1