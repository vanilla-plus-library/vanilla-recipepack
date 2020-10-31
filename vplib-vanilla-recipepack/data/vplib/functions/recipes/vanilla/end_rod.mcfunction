# SHAPED (2 slots)

# Register
execute unless score #vanilla.end_rod vplib.recipe matches 1.. store result score #vanilla.end_rod vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:blaze_rod"},{Slot:11b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_rod vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:blaze_rod"},{Slot:12b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_rod vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:blaze_rod"},{Slot:13b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_rod vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:blaze_rod"},{Slot:20b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_rod vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:blaze_rod"},{Slot:21b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_rod vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:blaze_rod"},{Slot:22b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_rod vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.end_rod vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:end_rod",Count:4b}