# SHAPED (6 slots)

# Register
execute unless score #vanilla.nether_brick_wall vplib.recipe matches 1.. store result score #vanilla.nether_brick_wall vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:nether_bricks"},{Slot:3b,id:"minecraft:nether_bricks"},{Slot:4b,id:"minecraft:nether_bricks"},{Slot:11b,id:"minecraft:nether_bricks"},{Slot:12b,id:"minecraft:nether_bricks"},{Slot:13b,id:"minecraft:nether_bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.nether_brick_wall vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:nether_bricks"},{Slot:12b,id:"minecraft:nether_bricks"},{Slot:13b,id:"minecraft:nether_bricks"},{Slot:20b,id:"minecraft:nether_bricks"},{Slot:21b,id:"minecraft:nether_bricks"},{Slot:22b,id:"minecraft:nether_bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.nether_brick_wall vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.nether_brick_wall vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:nether_brick_wall",Count:6b}