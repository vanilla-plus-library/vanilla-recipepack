# SHAPED (4 slots)

# Register
execute unless score #vanilla.iron_boots vplib.recipe matches 1.. store result score #vanilla.iron_boots vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:13b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.iron_boots vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:iron_ingot"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.iron_boots vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.iron_boots vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:iron_boots",Count:1b,tag:{Damage:0}}