# SHAPED (4 slots)

# Register
execute unless score #vanilla.quartz_bricks vplib.recipe matches 1.. store result score #vanilla.quartz_bricks vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:quartz_block"},{Slot:3b,id:"minecraft:quartz_block"},{Slot:11b,id:"minecraft:quartz_block"},{Slot:12b,id:"minecraft:quartz_block"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:quartz_block"},{Slot:4b,id:"minecraft:quartz_block"},{Slot:12b,id:"minecraft:quartz_block"},{Slot:13b,id:"minecraft:quartz_block"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:quartz_block"},{Slot:12b,id:"minecraft:quartz_block"},{Slot:20b,id:"minecraft:quartz_block"},{Slot:21b,id:"minecraft:quartz_block"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:quartz_block"},{Slot:13b,id:"minecraft:quartz_block"},{Slot:21b,id:"minecraft:quartz_block"},{Slot:22b,id:"minecraft:quartz_block"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_bricks vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.quartz_bricks vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:quartz_bricks",Count:4b}