#> thewii:vp_library/custom_crafting/block/main

# Check if it was destroyed
scoreboard players set #destroyed twvp.temp 0
execute unless block ~ ~ ~ minecraft:barrel run function thewii:vp_library/custom_crafting/block/destroyed
execute if score #destroyed twvp.temp matches 1 run kill

# Check slots
execute if score #destroyed twvp.temp matches 0 if block ~ ~ ~ minecraft:barrel[open=true] run function thewii:vp_library/custom_crafting/block/gui/main

# Hopper lock
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 24000