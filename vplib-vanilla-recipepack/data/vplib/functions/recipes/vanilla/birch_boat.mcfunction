# SHAPED (5 slots)

# Register
execute unless score #vanilla.birch_boat vplib.recipe matches 1.. store result score #vanilla.birch_boat vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:birch_planks"},{Slot:4b,id:"minecraft:birch_planks"},{Slot:11b,id:"minecraft:birch_planks"},{Slot:12b,id:"minecraft:birch_planks"},{Slot:13b,id:"minecraft:birch_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.birch_boat vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:birch_planks"},{Slot:13b,id:"minecraft:birch_planks"},{Slot:20b,id:"minecraft:birch_planks"},{Slot:21b,id:"minecraft:birch_planks"},{Slot:22b,id:"minecraft:birch_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.birch_boat vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.birch_boat vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:birch_boat",Count:1b}