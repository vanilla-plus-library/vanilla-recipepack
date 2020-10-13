#> thewii:vp_library/custom_crafting/block/gui/result_changed

# Get slot
data remove storage thewii:vp_library/temp array
data modify storage thewii:vp_library/temp array append from storage thewii:vp_library/temp containerResult

# Summon inserted item at nearest player
execute at @p run function thewii:vp_library/custom_crafting/block/gui/drop_loop


# Reset result slot
replaceitem block ~ ~ ~ container.16 minecraft:air
data remove storage thewii:vp_library/temp containerResult