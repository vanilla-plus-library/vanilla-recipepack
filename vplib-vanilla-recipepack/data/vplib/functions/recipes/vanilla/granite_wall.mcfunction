# SHAPED (6 slots)

# Register
execute unless score #vanilla.granite_wall vplib.recipe matches 1.. store result score #vanilla.granite_wall vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:granite"},{Slot:3b,id:"minecraft:granite"},{Slot:4b,id:"minecraft:granite"},{Slot:11b,id:"minecraft:granite"},{Slot:12b,id:"minecraft:granite"},{Slot:13b,id:"minecraft:granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.granite_wall vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:granite"},{Slot:12b,id:"minecraft:granite"},{Slot:13b,id:"minecraft:granite"},{Slot:20b,id:"minecraft:granite"},{Slot:21b,id:"minecraft:granite"},{Slot:22b,id:"minecraft:granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.granite_wall vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.granite_wall vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:granite_wall",Count:6b}