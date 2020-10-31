# SHAPED (9 slots)

# Register
execute unless score #vanilla.blast_furnace vplib.recipe matches 1.. store result score #vanilla.blast_furnace vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:furnace"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:smooth_stone"},{Slot:21b,id:"minecraft:smooth_stone"},{Slot:22b,id:"minecraft:smooth_stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.blast_furnace vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.blast_furnace vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:blast_furnace",Count:1b}