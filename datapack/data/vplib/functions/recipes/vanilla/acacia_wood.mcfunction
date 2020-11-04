# SHAPED (4 slots)

# Register
execute unless score #vanilla.acacia_wood vplib.recipe matches 1.. store result score #vanilla.acacia_wood vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:acacia_log"},{Slot:3b,id:"minecraft:acacia_log"},{Slot:11b,id:"minecraft:acacia_log"},{Slot:12b,id:"minecraft:acacia_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.acacia_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:acacia_log"},{Slot:4b,id:"minecraft:acacia_log"},{Slot:12b,id:"minecraft:acacia_log"},{Slot:13b,id:"minecraft:acacia_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.acacia_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:acacia_log"},{Slot:12b,id:"minecraft:acacia_log"},{Slot:20b,id:"minecraft:acacia_log"},{Slot:21b,id:"minecraft:acacia_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.acacia_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:acacia_log"},{Slot:13b,id:"minecraft:acacia_log"},{Slot:21b,id:"minecraft:acacia_log"},{Slot:22b,id:"minecraft:acacia_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.acacia_wood vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.acacia_wood vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:acacia_wood",Count:3b}