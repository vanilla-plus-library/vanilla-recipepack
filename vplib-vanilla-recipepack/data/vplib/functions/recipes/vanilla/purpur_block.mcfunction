# SHAPED (4 slots)

# Register
execute unless score #vanilla.purpur_block vplib.recipe matches 1.. store result score #vanilla.purpur_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:popped_chorus_fruit"},{Slot:3b,id:"minecraft:popped_chorus_fruit"},{Slot:11b,id:"minecraft:popped_chorus_fruit"},{Slot:12b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:popped_chorus_fruit"},{Slot:4b,id:"minecraft:popped_chorus_fruit"},{Slot:12b,id:"minecraft:popped_chorus_fruit"},{Slot:13b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:popped_chorus_fruit"},{Slot:12b,id:"minecraft:popped_chorus_fruit"},{Slot:20b,id:"minecraft:popped_chorus_fruit"},{Slot:21b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:popped_chorus_fruit"},{Slot:13b,id:"minecraft:popped_chorus_fruit"},{Slot:21b,id:"minecraft:popped_chorus_fruit"},{Slot:22b,id:"minecraft:popped_chorus_fruit"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.purpur_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:purpur_block",Count:4b}