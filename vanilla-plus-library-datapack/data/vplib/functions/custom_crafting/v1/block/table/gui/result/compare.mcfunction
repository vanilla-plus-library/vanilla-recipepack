#> vplib:custom_crafting/v1/block/table/gui/result/compare
#tellraw @a ["Comparing container slot:",{"nbt":"containerResult","storage": "vplib:temp"}]
#tellraw @a ["Comparing recipe output:",{"nbt":"recipeOutput","storage": "vplib:temp"}]

# Get slot in container
data remove storage vplib:temp compare
data modify storage vplib:temp compare set from storage vplib:temp containerResult

# Compare with recipe output
execute store success score #result_changed vpcr.temp run data modify storage vplib:temp compare set from storage vplib:temp storedData.recipeOutput

# Proceed if item changed
execute if score #result_changed vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/result/changed