# SHAPED (4 slots)

# Register
execute unless score #vanilla.quartz_block vplib.recipe matches 1.. store result score #vanilla.quartz_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:quartz"},{Slot:3b,id:"minecraft:quartz"},{Slot:11b,id:"minecraft:quartz"},{Slot:12b,id:"minecraft:quartz"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:quartz"},{Slot:4b,id:"minecraft:quartz"},{Slot:12b,id:"minecraft:quartz"},{Slot:13b,id:"minecraft:quartz"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:quartz"},{Slot:12b,id:"minecraft:quartz"},{Slot:20b,id:"minecraft:quartz"},{Slot:21b,id:"minecraft:quartz"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:quartz"},{Slot:13b,id:"minecraft:quartz"},{Slot:21b,id:"minecraft:quartz"},{Slot:22b,id:"minecraft:quartz"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.quartz_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.quartz_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:quartz_block",Count:1b}