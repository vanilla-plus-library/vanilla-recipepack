# SHAPED (9 slots)

# Register
execute unless score #vanilla.brown_stained_glass vplib.recipe matches 1.. store result score #vanilla.brown_stained_glass vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:glass"},{Slot:3b,id:"minecraft:glass"},{Slot:4b,id:"minecraft:glass"},{Slot:11b,id:"minecraft:glass"},{Slot:12b,id:"minecraft:brown_dye"},{Slot:13b,id:"minecraft:glass"},{Slot:20b,id:"minecraft:glass"},{Slot:21b,id:"minecraft:glass"},{Slot:22b,id:"minecraft:glass"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.brown_stained_glass vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.brown_stained_glass vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:brown_stained_glass",Count:8b}