# SHAPED (5 slots)

# Register
execute unless score #vanilla.clock vplib.recipe matches 1.. store result score #vanilla.clock vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:gold_ingot"},{Slot:11b,id:"minecraft:gold_ingot"},{Slot:12b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:gold_ingot"},{Slot:21b,id:"minecraft:gold_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.clock vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.clock vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:clock",Count:1b}