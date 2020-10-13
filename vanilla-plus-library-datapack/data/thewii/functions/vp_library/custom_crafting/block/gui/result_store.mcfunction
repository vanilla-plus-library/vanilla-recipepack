#> thewii:vp_library/custom_crafting/block/gui/result_store
#tellraw @a ["Updated stored result."]

# Remove slot data
data remove storage thewii:vp_library/temp recipeOutput.Slot

# Store Recipe Output
data modify entity @s ArmorItems[3].tag.vplib.recipeOutput set from storage thewii:vp_library/temp recipeOutput

# Update recipe id
scoreboard players operation @s twvp.recipe = #recipe twvp.temp