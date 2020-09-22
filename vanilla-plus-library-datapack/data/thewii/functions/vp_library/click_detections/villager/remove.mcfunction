# Kill matched villagers
scoreboard players operation #id twvp.temp = @s twvp.id
execute as @e[type=villager,tag=twvp.villager] if score @s twvp.id = #id twvp.temp run data merge entity @s {Health:0.0f,DeathTime:19s,DeathLootTable:"minecraft:air"}

# Reset player
tag @s remove twvp.prepared_villager
scoreboard players reset @s twvp.detect_clk