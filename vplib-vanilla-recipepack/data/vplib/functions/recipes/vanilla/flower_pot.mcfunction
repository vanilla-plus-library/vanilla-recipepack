# SHAPED (3 slots)

# Register
execute unless score #vanilla.flower_pot vplib.recipe matches 1.. store result score #vanilla.flower_pot vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:brick"},{Slot:4b,id:"minecraft:brick"},{Slot:12b,id:"minecraft:brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.flower_pot vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:brick"},{Slot:13b,id:"minecraft:brick"},{Slot:21b,id:"minecraft:brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.flower_pot vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.flower_pot vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:flower_pot",Count:1b}