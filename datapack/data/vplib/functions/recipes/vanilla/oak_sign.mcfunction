# SHAPED (7 slots)

# Register
execute unless score #vanilla.oak_sign vplib.recipe matches 1.. store result score #vanilla.oak_sign vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:oak_planks"},{Slot:3b,id:"minecraft:oak_planks"},{Slot:4b,id:"minecraft:oak_planks"},{Slot:11b,id:"minecraft:oak_planks"},{Slot:12b,id:"minecraft:oak_planks"},{Slot:13b,id:"minecraft:oak_planks"},{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_sign vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.oak_sign vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:oak_sign",Count:3b}