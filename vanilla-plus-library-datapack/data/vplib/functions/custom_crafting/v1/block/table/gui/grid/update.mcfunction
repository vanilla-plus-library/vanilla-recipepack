#> vplib:custom_crafting/v1/block/table/gui/grid/update
#say Grid was updated.
#tellraw @a ["Container:",{"nbt":"recipeInput","storage":"vplib:temp"}]
#tellraw @a ["Last check:",{"nbt":"storedData.recipeInput","storage":"vplib:temp"}]

# Prepare
scoreboard players set #recipe vpcr.temp 0
data modify storage vplib:temp recipeOutput set value {}

# Check recipes if there is at least one item in the grid
execute if data storage vplib:temp recipeInput[0] run function vplib:custom_crafting/v1/block/table/gui/grid/recipes

# DEBUG Message
#tellraw @a ["Output:",{"nbt":"recipeOutput","storage":"vplib:temp"}]
#tellraw @a ["Output:",{"nbt":"storedData.recipeOutput","storage":"vplib:temp"}]

# Save recipe output
execute unless score #recipe vpcr.temp = @s vpcc.recipe run function vplib:custom_crafting/v1/block/table/gui/result/store_changes

# Save grid
data modify storage vplib:temp storedData.recipeInput set from storage vplib:temp recipeInput

# Require an update
scoreboard players set #update_data vpcr.temp 1



