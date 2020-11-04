# SHAPED (4 slots)

# Register
execute unless score #vanilla.white_wool_from_string vplib.recipe matches 1.. store result score #vanilla.white_wool_from_string vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:11b,id:"minecraft:string"},{Slot:12b,id:"minecraft:string"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.white_wool_from_string vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:string"},{Slot:4b,id:"minecraft:string"},{Slot:12b,id:"minecraft:string"},{Slot:13b,id:"minecraft:string"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.white_wool_from_string vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:string"},{Slot:12b,id:"minecraft:string"},{Slot:20b,id:"minecraft:string"},{Slot:21b,id:"minecraft:string"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.white_wool_from_string vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:string"},{Slot:13b,id:"minecraft:string"},{Slot:21b,id:"minecraft:string"},{Slot:22b,id:"minecraft:string"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.white_wool_from_string vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.white_wool_from_string vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:white_wool",Count:1b}