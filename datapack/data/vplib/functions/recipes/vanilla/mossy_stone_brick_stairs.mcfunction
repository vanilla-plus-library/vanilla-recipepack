# SHAPED (6 slots)

# Register
execute unless score #vanilla.mossy_stone_brick_stairs vplib.recipe matches 1.. store result score #vanilla.mossy_stone_brick_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:mossy_stone_bricks"},{Slot:11b,id:"minecraft:mossy_stone_bricks"},{Slot:12b,id:"minecraft:mossy_stone_bricks"},{Slot:20b,id:"minecraft:mossy_stone_bricks"},{Slot:21b,id:"minecraft:mossy_stone_bricks"},{Slot:22b,id:"minecraft:mossy_stone_bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.mossy_stone_brick_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.mossy_stone_brick_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:mossy_stone_brick_stairs",Count:4b}