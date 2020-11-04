# SHAPED (7 slots)

# Register
execute unless score #vanilla.armor_stand vplib.recipe matches 1.. store result score #vanilla.armor_stand vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stick"},{Slot:3b,id:"minecraft:stick"},{Slot:4b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:stick"},{Slot:20b,id:"minecraft:stick"},{Slot:21b,id:"minecraft:smooth_stone_slab"},{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.armor_stand vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.armor_stand vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:armor_stand",Count:1b}