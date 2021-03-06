# SHAPED (4 slots)

# Register
execute unless score #vanilla.stripped_spruce_wood vplib.recipe matches 1.. store result score #vanilla.stripped_spruce_wood vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stripped_spruce_log"},{Slot:3b,id:"minecraft:stripped_spruce_log"},{Slot:11b,id:"minecraft:stripped_spruce_log"},{Slot:12b,id:"minecraft:stripped_spruce_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_spruce_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:stripped_spruce_log"},{Slot:4b,id:"minecraft:stripped_spruce_log"},{Slot:12b,id:"minecraft:stripped_spruce_log"},{Slot:13b,id:"minecraft:stripped_spruce_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_spruce_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:stripped_spruce_log"},{Slot:12b,id:"minecraft:stripped_spruce_log"},{Slot:20b,id:"minecraft:stripped_spruce_log"},{Slot:21b,id:"minecraft:stripped_spruce_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_spruce_wood vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:stripped_spruce_log"},{Slot:13b,id:"minecraft:stripped_spruce_log"},{Slot:21b,id:"minecraft:stripped_spruce_log"},{Slot:22b,id:"minecraft:stripped_spruce_log"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_spruce_wood vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.stripped_spruce_wood vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:stripped_spruce_wood",Count:3b}