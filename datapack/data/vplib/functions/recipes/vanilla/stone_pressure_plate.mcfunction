# SHAPED (2 slots)

# Register
execute unless score #vanilla.stone_pressure_plate vplib.recipe matches 1.. store result score #vanilla.stone_pressure_plate vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stone"},{Slot:3b,id:"minecraft:stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stone_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:stone"},{Slot:4b,id:"minecraft:stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stone_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:stone"},{Slot:12b,id:"minecraft:stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stone_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:stone"},{Slot:13b,id:"minecraft:stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stone_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:stone"},{Slot:21b,id:"minecraft:stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stone_pressure_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:21b,id:"minecraft:stone"},{Slot:22b,id:"minecraft:stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stone_pressure_plate vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.stone_pressure_plate vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:stone_pressure_plate",Count:1b}