# SHAPED (9 slots)

# Register
execute unless score #vanilla.map vplib.recipe matches 1.. store result score #vanilla.map vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:paper"},{Slot:3b,id:"minecraft:paper"},{Slot:4b,id:"minecraft:paper"},{Slot:11b,id:"minecraft:paper"},{Slot:12b,id:"minecraft:compass"},{Slot:13b,id:"minecraft:paper"},{Slot:20b,id:"minecraft:paper"},{Slot:21b,id:"minecraft:paper"},{Slot:22b,id:"minecraft:paper"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.map vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.map vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:map",Count:1b}