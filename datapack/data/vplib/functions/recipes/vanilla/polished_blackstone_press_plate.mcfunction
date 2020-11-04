# SHAPED (2 slots)

# Register
execute unless score #vanilla.polished_blackstone_press_plate vplib.recipe matches 1.. store result score #vanilla.polished_blackstone_press_plate vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:polished_blackstone"},{Slot:3b,id:"minecraft:polished_blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_blackstone_press_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:polished_blackstone"},{Slot:4b,id:"minecraft:polished_blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_blackstone_press_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:polished_blackstone"},{Slot:12b,id:"minecraft:polished_blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_blackstone_press_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:polished_blackstone"},{Slot:13b,id:"minecraft:polished_blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_blackstone_press_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:polished_blackstone"},{Slot:21b,id:"minecraft:polished_blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_blackstone_press_plate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:21b,id:"minecraft:polished_blackstone"},{Slot:22b,id:"minecraft:polished_blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_blackstone_press_plate vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.polished_blackstone_press_plate vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:polished_blackstone_pressure_plate",Count:1b}