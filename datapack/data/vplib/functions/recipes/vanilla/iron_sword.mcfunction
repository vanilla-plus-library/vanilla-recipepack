# SHAPED (3 slots)

# Register
execute unless score #vanilla.iron_sword vplib.recipe matches 1.. store result score #vanilla.iron_sword vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.iron_sword vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.iron_sword vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:iron_ingot"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.iron_sword vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.iron_sword vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:iron_sword",Count:1b,tag:{Damage:0}}