# SHAPED (6 slots)

# Register
execute unless score #vanilla.polish_blackstone_brick_stairs vplib.recipe matches 1.. store result score #vanilla.polish_blackstone_brick_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:polished_blackstone_bricks"},{Slot:11b,id:"minecraft:polished_blackstone_bricks"},{Slot:12b,id:"minecraft:polished_blackstone_bricks"},{Slot:20b,id:"minecraft:polished_blackstone_bricks"},{Slot:21b,id:"minecraft:polished_blackstone_bricks"},{Slot:22b,id:"minecraft:polished_blackstone_bricks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polish_blackstone_brick_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.polish_blackstone_brick_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:polished_blackstone_brick_stairs",Count:4b}