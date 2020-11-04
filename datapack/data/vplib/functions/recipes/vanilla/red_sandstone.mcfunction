# SHAPED (4 slots)

# Register
execute unless score #vanilla.red_sandstone vplib.recipe matches 1.. store result score #vanilla.red_sandstone vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:red_sand"},{Slot:3b,id:"minecraft:red_sand"},{Slot:11b,id:"minecraft:red_sand"},{Slot:12b,id:"minecraft:red_sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:red_sand"},{Slot:4b,id:"minecraft:red_sand"},{Slot:12b,id:"minecraft:red_sand"},{Slot:13b,id:"minecraft:red_sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:red_sand"},{Slot:12b,id:"minecraft:red_sand"},{Slot:20b,id:"minecraft:red_sand"},{Slot:21b,id:"minecraft:red_sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:red_sand"},{Slot:13b,id:"minecraft:red_sand"},{Slot:21b,id:"minecraft:red_sand"},{Slot:22b,id:"minecraft:red_sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_sandstone vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.red_sandstone vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:red_sandstone",Count:1b}