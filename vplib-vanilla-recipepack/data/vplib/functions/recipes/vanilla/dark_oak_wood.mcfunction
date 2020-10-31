# SHAPED (4 slots)

# Register
execute unless score #vanilla.dark_oak_wood vplib.recipe matches 1.. store result score #vanilla.dark_oak_wood vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:dark_oak_log"},{Slot:3b,id:"minecraft:dark_oak_log"},{Slot:11b,id:"minecraft:dark_oak_log"},{Slot:12b,id:"minecraft:dark_oak_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.dark_oak_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:dark_oak_log"},{Slot:4b,id:"minecraft:dark_oak_log"},{Slot:12b,id:"minecraft:dark_oak_log"},{Slot:13b,id:"minecraft:dark_oak_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.dark_oak_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:dark_oak_log"},{Slot:12b,id:"minecraft:dark_oak_log"},{Slot:20b,id:"minecraft:dark_oak_log"},{Slot:21b,id:"minecraft:dark_oak_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.dark_oak_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:dark_oak_log"},{Slot:13b,id:"minecraft:dark_oak_log"},{Slot:21b,id:"minecraft:dark_oak_log"},{Slot:22b,id:"minecraft:dark_oak_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.dark_oak_wood vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.dark_oak_wood vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:dark_oak_wood",Count:3b}