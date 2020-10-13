#> thewii:vp_library/custom_crafting/block/main

# Check if it was destroyed
execute unless block ~ ~ ~ minecraft:barrel run function thewii:vp_library/custom_crafting/block/destroyed

# Check slots
execute if block ~ ~ ~ minecraft:barrel[open=true] run function thewii:vp_library/custom_crafting/block/gui/main

# Hopper lock
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 24000