#> vplib:custom_crafting/v1/block/table/gui/result/store_changes

# Save result
data remove storage vplib:temp recipeOutput.Slot
data modify storage vplib:temp storedData.recipeOutput set from storage vplib:temp recipeOutput

# Update score
scoreboard players operation @s vpcc.recipe = #recipe vpcr.temp