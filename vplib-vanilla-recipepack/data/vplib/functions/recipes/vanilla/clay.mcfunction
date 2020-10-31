# SHAPED (4 slots)

# Register
execute unless score #vanilla.clay vplib.recipe matches 1.. store result score #vanilla.clay vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:clay_ball"},{Slot:3b,id:"minecraft:clay_ball"},{Slot:11b,id:"minecraft:clay_ball"},{Slot:12b,id:"minecraft:clay_ball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.clay vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:clay_ball"},{Slot:4b,id:"minecraft:clay_ball"},{Slot:12b,id:"minecraft:clay_ball"},{Slot:13b,id:"minecraft:clay_ball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.clay vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:clay_ball"},{Slot:12b,id:"minecraft:clay_ball"},{Slot:20b,id:"minecraft:clay_ball"},{Slot:21b,id:"minecraft:clay_ball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.clay vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:clay_ball"},{Slot:13b,id:"minecraft:clay_ball"},{Slot:21b,id:"minecraft:clay_ball"},{Slot:22b,id:"minecraft:clay_ball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.clay vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.clay vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:clay",Count:1b}