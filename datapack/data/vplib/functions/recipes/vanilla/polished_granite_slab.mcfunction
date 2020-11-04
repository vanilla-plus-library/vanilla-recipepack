# SHAPED (3 slots)

# Register
execute unless score #vanilla.polished_granite_slab vplib.recipe matches 1.. store result score #vanilla.polished_granite_slab vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:polished_granite"},{Slot:3b,id:"minecraft:polished_granite"},{Slot:4b,id:"minecraft:polished_granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:polished_granite"},{Slot:12b,id:"minecraft:polished_granite"},{Slot:13b,id:"minecraft:polished_granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:polished_granite"},{Slot:21b,id:"minecraft:polished_granite"},{Slot:22b,id:"minecraft:polished_granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite_slab vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.polished_granite_slab vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:polished_granite_slab",Count:6b}