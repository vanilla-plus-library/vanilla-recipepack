# SHAPED (3 slots)

# Register
execute unless score #vanilla.end_stone_brick_slab vplib.recipe matches 1.. store result score #vanilla.end_stone_brick_slab vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:end_stone_bricks"},{Slot:3b,id:"minecraft:end_stone_bricks"},{Slot:4b,id:"minecraft:end_stone_bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_stone_brick_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:end_stone_bricks"},{Slot:12b,id:"minecraft:end_stone_bricks"},{Slot:13b,id:"minecraft:end_stone_bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_stone_brick_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:end_stone_bricks"},{Slot:21b,id:"minecraft:end_stone_bricks"},{Slot:22b,id:"minecraft:end_stone_bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.end_stone_brick_slab vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.end_stone_brick_slab vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:end_stone_brick_slab",Count:6b}