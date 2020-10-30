#> vplib:click_detection/v1/villager/remove

# Kill matched villagers
scoreboard players operation #id vplib.temp = @s vplib.id
execute as @e[type=villager,tag=vplib.villager] if score @s vplib.id = #id vplib.temp run data merge entity @s {Health:0.0f,DeathTime:19s,DeathLootTable:"minecraft:air"}

# Reset player
tag @s remove vplib.click.prepared
scoreboard players reset @s vplib.clk_detect