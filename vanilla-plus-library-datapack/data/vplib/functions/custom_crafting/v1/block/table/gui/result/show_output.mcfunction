#> vplib:custom_crafting/v1/block/table/gui/result/show_output
# DEBUG Show output
#say Showing result.

# Set default if container's result was empty
execute unless data storage vplib:temp containerResult run replaceitem block ~ ~ ~ container.16 minecraft:stone 1

# Get item
data modify storage vplib:temp item set from storage vplib:temp storedData.recipeOutput
data modify storage vplib:temp item.Slot set value 16b

# Set recipe output
data modify block ~ ~ ~ Items[{Slot:16b}] set from storage vplib:temp item