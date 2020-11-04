# SHAPED (9 slots)

# Register
execute unless score #vanilla.nether_wart_block vplib.recipe matches 1.. store result score #vanilla.nether_wart_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:nether_wart"},{Slot:3b,id:"minecraft:nether_wart"},{Slot:4b,id:"minecraft:nether_wart"},{Slot:11b,id:"minecraft:nether_wart"},{Slot:12b,id:"minecraft:nether_wart"},{Slot:13b,id:"minecraft:nether_wart"},{Slot:20b,id:"minecraft:nether_wart"},{Slot:21b,id:"minecraft:nether_wart"},{Slot:22b,id:"minecraft:nether_wart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.nether_wart_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.nether_wart_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:nether_wart_block",Count:1b}