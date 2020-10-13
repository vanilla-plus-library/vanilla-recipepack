#> thewii:vp_library/custom_crafting/block/gui/result_compare
#tellraw @a ["Comparing container slot:",{"nbt":"containerResult","storage": "thewii:vp_library/temp"}]
#tellraw @a ["Comparing recipe output:",{"nbt":"recipeOutput","storage": "thewii:vp_library/temp"}]

# Get result slot in container
data remove storage thewii:vp_library/temp compare
data modify storage thewii:vp_library/temp compare set from storage thewii:vp_library/temp containerResult

# Compare with result from recipe
execute store success score #result_changed twvp.temp run data modify storage thewii:vp_library/temp compare set from storage thewii:vp_library/temp recipeOutput

# Drop inserted item
execute if score #result_changed twvp.temp matches 1 run function thewii:vp_library/custom_crafting/block/gui/result_changed