# SHAPED (9 slots)

# Register
execute unless score #vanilla.coal_block vplib.recipe matches 1.. store result score #vanilla.coal_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:coal"},{Slot:3b,id:"minecraft:coal"},{Slot:4b,id:"minecraft:coal"},{Slot:11b,id:"minecraft:coal"},{Slot:12b,id:"minecraft:coal"},{Slot:13b,id:"minecraft:coal"},{Slot:20b,id:"minecraft:coal"},{Slot:21b,id:"minecraft:coal"},{Slot:22b,id:"minecraft:coal"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.coal_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.coal_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:coal_block",Count:1b}