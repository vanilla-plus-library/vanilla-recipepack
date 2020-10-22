#> vplib:custom_crafting/v1/block/table/gui/result/save_changes
# DEBUG
#say Recipe output changed.

# Save result
data remove storage vplib:temp recipeOutput.Slot
data modify storage vplib:temp savedData.recipeOutput set from storage vplib:temp recipeOutput

# Check if recipe changed
execute if score @s vplib.data matches 1.. if score #recipe vplib.temp matches 1.. run tag @s add vplib.recipe_changed

# Update score
scoreboard players operation @s vplib.data = #recipe vplib.temp

# Force to update result
scoreboard players set #update_result vplib.temp 1