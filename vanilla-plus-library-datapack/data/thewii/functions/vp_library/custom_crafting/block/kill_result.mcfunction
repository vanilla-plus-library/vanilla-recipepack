#> thewii:vp_library/custom_crafting/block/kill_result

# Get item data
data modify storage thewii:vp_library/temp compare set from entity @s Item

# Compare
execute store success score #success twvp.temp run data modify storage thewii:vp_library/temp compare set from storage thewii:vp_library/temp item

# Kill if matches
execute if score #success twvp.temp matches 0 run kill @s
