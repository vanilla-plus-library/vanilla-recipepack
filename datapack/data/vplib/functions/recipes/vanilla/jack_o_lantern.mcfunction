# SHAPED (2 slots)

# Register
execute unless score #vanilla.jack_o_lantern vplib.recipe matches 1.. store result score #vanilla.jack_o_lantern vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:carved_pumpkin"},{Slot:11b,id:"minecraft:torch"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.jack_o_lantern vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:carved_pumpkin"},{Slot:12b,id:"minecraft:torch"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.jack_o_lantern vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:carved_pumpkin"},{Slot:13b,id:"minecraft:torch"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.jack_o_lantern vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:carved_pumpkin"},{Slot:20b,id:"minecraft:torch"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.jack_o_lantern vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:carved_pumpkin"},{Slot:21b,id:"minecraft:torch"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.jack_o_lantern vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:carved_pumpkin"},{Slot:22b,id:"minecraft:torch"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.jack_o_lantern vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.jack_o_lantern vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:jack_o_lantern",Count:1b}