# SHAPED (4 slots)

# Register
execute unless score #vanilla.snow_block vplib.recipe matches 1.. store result score #vanilla.snow_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:snowball"},{Slot:3b,id:"minecraft:snowball"},{Slot:11b,id:"minecraft:snowball"},{Slot:12b,id:"minecraft:snowball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.snow_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:snowball"},{Slot:4b,id:"minecraft:snowball"},{Slot:12b,id:"minecraft:snowball"},{Slot:13b,id:"minecraft:snowball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.snow_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:snowball"},{Slot:12b,id:"minecraft:snowball"},{Slot:20b,id:"minecraft:snowball"},{Slot:21b,id:"minecraft:snowball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.snow_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:snowball"},{Slot:13b,id:"minecraft:snowball"},{Slot:21b,id:"minecraft:snowball"},{Slot:22b,id:"minecraft:snowball"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.snow_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.snow_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:snow_block",Count:1b}