# SHAPED (6 slots)

# Register
execute unless score #vanilla.green_stained_glass_pane vplib.recipe matches 1.. store result score #vanilla.green_stained_glass_pane vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:green_stained_glass"},{Slot:3b,id:"minecraft:green_stained_glass"},{Slot:4b,id:"minecraft:green_stained_glass"},{Slot:11b,id:"minecraft:green_stained_glass"},{Slot:12b,id:"minecraft:green_stained_glass"},{Slot:13b,id:"minecraft:green_stained_glass"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.green_stained_glass_pane vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:green_stained_glass"},{Slot:12b,id:"minecraft:green_stained_glass"},{Slot:13b,id:"minecraft:green_stained_glass"},{Slot:20b,id:"minecraft:green_stained_glass"},{Slot:21b,id:"minecraft:green_stained_glass"},{Slot:22b,id:"minecraft:green_stained_glass"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.green_stained_glass_pane vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.green_stained_glass_pane vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:green_stained_glass_pane",Count:16b}