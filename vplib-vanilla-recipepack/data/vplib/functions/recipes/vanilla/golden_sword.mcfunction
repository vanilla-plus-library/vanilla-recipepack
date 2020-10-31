# SHAPED (3 slots)

# Register
execute unless score #vanilla.golden_sword vplib.recipe matches 1.. store result score #vanilla.golden_sword vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:gold_ingot"},{Slot:11b,id:"minecraft:gold_ingot"},{Slot:20b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.golden_sword vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:gold_ingot"},{Slot:12b,id:"minecraft:gold_ingot"},{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.golden_sword vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:gold_ingot"},{Slot:13b,id:"minecraft:gold_ingot"},{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.golden_sword vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.golden_sword vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:golden_sword",Count:1b,tag:{Damage:0}}