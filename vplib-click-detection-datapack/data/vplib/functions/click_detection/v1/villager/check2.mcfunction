# Kill matched villagers
scoreboard players operation #id vplib.temp = @s vplib.id
execute as @e[type=villager,tag=vplib.villager] if score @s vplib.id = #id vplib.temp run data merge entity @s {Health:0.0f,DeathTime:19s,DeathLootTable:"minecraft:air"}