# SHAPED (9 slots)

# Register
execute unless score #vanilla.bone_block vplib.recipe matches 1.. store result score #vanilla.bone_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:bone_meal"},{Slot:3b,id:"minecraft:bone_meal"},{Slot:4b,id:"minecraft:bone_meal"},{Slot:11b,id:"minecraft:bone_meal"},{Slot:12b,id:"minecraft:bone_meal"},{Slot:13b,id:"minecraft:bone_meal"},{Slot:20b,id:"minecraft:bone_meal"},{Slot:21b,id:"minecraft:bone_meal"},{Slot:22b,id:"minecraft:bone_meal"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bone_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.bone_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:bone_block",Count:1b}