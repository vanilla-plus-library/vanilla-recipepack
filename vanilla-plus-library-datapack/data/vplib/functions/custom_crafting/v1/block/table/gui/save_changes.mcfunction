#> vplib:custom_crafting/v1/block/table/gui/save_changes
#tellraw @a ["Updated stored result."]

# Remove slot data
data remove storage vplib:temp recipeOutput.Slot

# Store Recipe Output
data modify entity @s ArmorItems[3].tag.vplib.recipeOutput set from storage vplib:temp recipeOutput

# Update recipe id
scoreboard players operation @s vpcc.recipe = #recipe vpcr.temp