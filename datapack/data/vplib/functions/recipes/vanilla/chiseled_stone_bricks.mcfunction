# SHAPED (2 slots)

# Register
execute unless score #vanilla.chiseled_stone_bricks vplib.recipe matches 1.. store result score #vanilla.chiseled_stone_bricks vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stone_brick_slab"},{Slot:11b,id:"minecraft:stone_brick_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_stone_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:stone_brick_slab"},{Slot:12b,id:"minecraft:stone_brick_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_stone_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:stone_brick_slab"},{Slot:13b,id:"minecraft:stone_brick_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_stone_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:stone_brick_slab"},{Slot:20b,id:"minecraft:stone_brick_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_stone_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:stone_brick_slab"},{Slot:21b,id:"minecraft:stone_brick_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_stone_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:stone_brick_slab"},{Slot:22b,id:"minecraft:stone_brick_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_stone_bricks vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.chiseled_stone_bricks vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:chiseled_stone_bricks",Count:1b}