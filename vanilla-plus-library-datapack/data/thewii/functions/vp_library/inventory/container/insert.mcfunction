#particle flame ~ ~ ~ 0.2 0.2 0.2 0 4 normal

# Reset inserted boolean
scoreboard players set #inserted twvp.temp 0

# Set item to shulker box
data remove block 29999983 0 4320 Items
data modify block 29999983 0 4320 Items append from storage thewii:vp_library/temp item

# Store how the container was
data remove storage thewii:vp_library/temp compare
data modify storage thewii:vp_library/temp compare set from block ~ ~ ~ Items

# Attempt to insert
loot insert ~ ~ ~ mine 29999983 0 4320 air{drop_contents:1b}

# Compare if container changed(meaning if item was inserted)
execute store result score #inserted twvp.temp run data modify storage thewii:vp_library/temp compare set from block ~ ~ ~ Items