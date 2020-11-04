# SHAPED (3 slots)

# Register
execute unless score #vanilla.snow vplib.recipe matches 1.. store result score #vanilla.snow vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:snow_block"},{Slot:3b,id:"minecraft:snow_block"},{Slot:4b,id:"minecraft:snow_block"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.snow vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:snow_block"},{Slot:12b,id:"minecraft:snow_block"},{Slot:13b,id:"minecraft:snow_block"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.snow vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:snow_block"},{Slot:21b,id:"minecraft:snow_block"},{Slot:22b,id:"minecraft:snow_block"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.snow vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.snow vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:snow",Count:6b}