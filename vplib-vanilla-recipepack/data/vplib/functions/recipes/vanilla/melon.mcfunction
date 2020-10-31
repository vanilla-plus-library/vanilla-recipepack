# SHAPED (9 slots)

# Register
execute unless score #vanilla.melon vplib.recipe matches 1.. store result score #vanilla.melon vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:melon_slice"},{Slot:3b,id:"minecraft:melon_slice"},{Slot:4b,id:"minecraft:melon_slice"},{Slot:11b,id:"minecraft:melon_slice"},{Slot:12b,id:"minecraft:melon_slice"},{Slot:13b,id:"minecraft:melon_slice"},{Slot:20b,id:"minecraft:melon_slice"},{Slot:21b,id:"minecraft:melon_slice"},{Slot:22b,id:"minecraft:melon_slice"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.melon vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.melon vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:melon",Count:1b}