#> vplib:custom_crafting/v1/block/table/gui/grid/update

# Prepare
scoreboard players set #recipe vpcr.temp 0
data modify storage vplib:temp recipeOutput set value {}

# Call recipes if there's at least one item in the grid
execute if data storage vplib:temp containerGrid[0] run function vplib:custom_crafting/v1/block/table/gui/grid/recipes

# DEBUG Grid update
#tellraw @a ["Changed items: ",{"score":{"name":"#changed_items","objective":"vpcr.temp"}}]
#tellraw @a ["Last check:",{"nbt":"savedData.recipeInput","storage":"vplib:temp"}]
#tellraw @a ["Current check:",{"nbt":"recipeInput","storage":"vplib:temp"}]
#tellraw @a ["Last Output:",{"nbt":"savedData.recipeOutput","storage":"vplib:temp"}]
#tellraw @a ["Current Output:",{"nbt":"recipeOutput","storage":"vplib:temp"}]
#tellraw @a ["Last id:",{"score":{"name":"@s","objective": "vpcc.saved"}},"  Current id:",{"score":{"name":"#recipe","objective": "vpcr.temp"}}]

# Save recipe output if recipe id changed
execute unless score #recipe vpcr.temp = @s vpcc.saved run function vplib:custom_crafting/v1/block/table/gui/result/save_changes

# Save grid
data modify storage vplib:temp savedData.recipeInput set from storage vplib:temp containerGrid


# Force to save data
scoreboard players set #save_data vpcr.temp 1


