#> thewii:vp_library/custom_crafting/block/gui/show_result
#tellraw @a ["Showing result."]

# Set default if container's result was empty
execute unless data storage thewii:vp_library/temp containerResult run replaceitem block ~ ~ ~ container.16 minecraft:stone 1

# Get item
data modify storage thewii:vp_library/temp item set from storage thewii:vp_library/temp recipeOutput
data modify storage thewii:vp_library/temp item.Slot set value 16b

# Set recipe output
data modify block ~ ~ ~ Items[{Slot:16b}] set from storage thewii:vp_library/temp item