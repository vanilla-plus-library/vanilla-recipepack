# SHAPED (9 slots)

# Register
execute unless score #vanilla.end_crystal vplib.recipe matches 1.. store result score #vanilla.end_crystal vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:glass"},{Slot:3b,id:"minecraft:glass"},{Slot:4b,id:"minecraft:glass"},{Slot:11b,id:"minecraft:glass"},{Slot:12b,id:"minecraft:ender_eye"},{Slot:13b,id:"minecraft:glass"},{Slot:20b,id:"minecraft:glass"},{Slot:21b,id:"minecraft:ghast_tear"},{Slot:22b,id:"minecraft:glass"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_crystal vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.end_crystal vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:end_crystal",Count:1b}