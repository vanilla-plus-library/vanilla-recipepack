#> vplib:custom_crafting/v1/block/table/gui/grid/update
#say DEBUG Grid was updated.
#tellraw @a ["Last check:",{"nbt":"storedData.recipeInput","storage":"vplib:temp"}]
#tellraw @a ["Current check:",{"nbt":"recipeInput","storage":"vplib:temp"}]

# Prepare
scoreboard players set #recipe vpcr.temp 0
data modify storage vplib:temp recipeOutput set value {}

# Check recipes if there is at least one item in the grid
execute if data storage vplib:temp recipeInput[0] run function vplib:custom_crafting/v1/block/table/gui/grid/recipes

# DEBUG Message
#tellraw @a ["Last Output:",{"nbt":"storedData.recipeOutput","storage":"vplib:temp"}]
#tellraw @a ["Current Output:",{"nbt":"recipeOutput","storage":"vplib:temp"}]

# Save recipe output
#tellraw @a ["Last id:",{"score":{"name":"@s","objective": "vpcc.saved"}},"  Current id:",{"score":{"name":"#recipe","objective": "vpcr.temp"}}]
execute unless score #recipe vpcr.temp = @s vpcc.saved run function vplib:custom_crafting/v1/block/table/gui/result/store_changes

# Save grid
data modify storage vplib:temp storedData.recipeInput set from storage vplib:temp recipeInput


# Force store data
scoreboard players set #store_data vpcr.temp 1


