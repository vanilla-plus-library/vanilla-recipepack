# SHAPED (9 slots)

# Register
execute unless score #vanilla.gold_ingot_from_nuggets vplib.recipe matches 1.. store result score #vanilla.gold_ingot_from_nuggets vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:gold_nugget"},{Slot:3b,id:"minecraft:gold_nugget"},{Slot:4b,id:"minecraft:gold_nugget"},{Slot:11b,id:"minecraft:gold_nugget"},{Slot:12b,id:"minecraft:gold_nugget"},{Slot:13b,id:"minecraft:gold_nugget"},{Slot:20b,id:"minecraft:gold_nugget"},{Slot:21b,id:"minecraft:gold_nugget"},{Slot:22b,id:"minecraft:gold_nugget"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.gold_ingot_from_nuggets vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.gold_ingot_from_nuggets vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:gold_ingot",Count:1b}