# SHAPED (6 slots)

# Register
execute unless score #vanilla.acacia_stairs vplib.recipe matches 1.. store result score #vanilla.acacia_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:acacia_planks"},{Slot:11b,id:"minecraft:acacia_planks"},{Slot:12b,id:"minecraft:acacia_planks"},{Slot:20b,id:"minecraft:acacia_planks"},{Slot:21b,id:"minecraft:acacia_planks"},{Slot:22b,id:"minecraft:acacia_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.acacia_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.acacia_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:acacia_stairs",Count:4b}