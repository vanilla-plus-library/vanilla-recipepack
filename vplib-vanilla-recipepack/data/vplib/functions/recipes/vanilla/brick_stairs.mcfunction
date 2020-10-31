# SHAPED (6 slots)

# Register
execute unless score #vanilla.brick_stairs vplib.recipe matches 1.. store result score #vanilla.brick_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:bricks"},{Slot:11b,id:"minecraft:bricks"},{Slot:12b,id:"minecraft:bricks"},{Slot:20b,id:"minecraft:bricks"},{Slot:21b,id:"minecraft:bricks"},{Slot:22b,id:"minecraft:bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.brick_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.brick_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:brick_stairs",Count:4b}