# SHAPED (6 slots)

# Register
execute unless score #vanilla.polished_granite_stairs vplib.recipe matches 1.. store result score #vanilla.polished_granite_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:polished_granite"},{Slot:11b,id:"minecraft:polished_granite"},{Slot:12b,id:"minecraft:polished_granite"},{Slot:20b,id:"minecraft:polished_granite"},{Slot:21b,id:"minecraft:polished_granite"},{Slot:22b,id:"minecraft:polished_granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.polished_granite_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:polished_granite_stairs",Count:4b}