# SHAPED (4 slots)

# Register
execute unless score #vanilla.red_nether_bricks vplib.recipe matches 1.. store result score #vanilla.red_nether_bricks vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:nether_brick"},{Slot:3b,id:"minecraft:nether_wart"},{Slot:11b,id:"minecraft:nether_wart"},{Slot:12b,id:"minecraft:nether_brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_nether_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:nether_brick"},{Slot:4b,id:"minecraft:nether_wart"},{Slot:12b,id:"minecraft:nether_wart"},{Slot:13b,id:"minecraft:nether_brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_nether_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:nether_brick"},{Slot:12b,id:"minecraft:nether_wart"},{Slot:20b,id:"minecraft:nether_wart"},{Slot:21b,id:"minecraft:nether_brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_nether_bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:nether_brick"},{Slot:13b,id:"minecraft:nether_wart"},{Slot:21b,id:"minecraft:nether_wart"},{Slot:22b,id:"minecraft:nether_brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.red_nether_bricks vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.red_nether_bricks vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:red_nether_bricks",Count:1b}