# SHAPED (2 slots)

# Register
execute unless score #vanilla.oak_pressure_plate vplib.recipe matches 1.. store result score #vanilla.oak_pressure_plate vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:oak_planks"},{Slot:3b,id:"minecraft:oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:oak_planks"},{Slot:4b,id:"minecraft:oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:oak_planks"},{Slot:12b,id:"minecraft:oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:oak_planks"},{Slot:13b,id:"minecraft:oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:oak_planks"},{Slot:21b,id:"minecraft:oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:21b,id:"minecraft:oak_planks"},{Slot:22b,id:"minecraft:oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_pressure_plate vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.oak_pressure_plate vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:oak_pressure_plate",Count:1b}