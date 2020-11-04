# SHAPED (4 slots)

# Register
execute unless score #vanilla.polished_basalt vplib.recipe matches 1.. store result score #vanilla.polished_basalt vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:basalt"},{Slot:3b,id:"minecraft:basalt"},{Slot:11b,id:"minecraft:basalt"},{Slot:12b,id:"minecraft:basalt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_basalt vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:basalt"},{Slot:4b,id:"minecraft:basalt"},{Slot:12b,id:"minecraft:basalt"},{Slot:13b,id:"minecraft:basalt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_basalt vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:basalt"},{Slot:12b,id:"minecraft:basalt"},{Slot:20b,id:"minecraft:basalt"},{Slot:21b,id:"minecraft:basalt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_basalt vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:basalt"},{Slot:13b,id:"minecraft:basalt"},{Slot:21b,id:"minecraft:basalt"},{Slot:22b,id:"minecraft:basalt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_basalt vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.polished_basalt vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:polished_basalt",Count:4b}