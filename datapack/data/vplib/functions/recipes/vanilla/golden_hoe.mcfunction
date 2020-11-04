# SHAPED (4 slots)

# Register
execute unless score #vanilla.golden_hoe vplib.recipe matches 1.. store result score #vanilla.golden_hoe vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:gold_ingot"},{Slot:3b,id:"minecraft:gold_ingot"},{Slot:12b,id:"minecraft:stick"},{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.golden_hoe vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:gold_ingot"},{Slot:4b,id:"minecraft:gold_ingot"},{Slot:13b,id:"minecraft:stick"},{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.golden_hoe vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.golden_hoe vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:golden_hoe",Count:1b,tag:{Damage:0}}