# SHAPED (9 slots)

# Register
execute unless score #vanilla.glistering_melon_slice vplib.recipe matches 1.. store result score #vanilla.glistering_melon_slice vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:gold_nugget"},{Slot:3b,id:"minecraft:gold_nugget"},{Slot:4b,id:"minecraft:gold_nugget"},{Slot:11b,id:"minecraft:gold_nugget"},{Slot:12b,id:"minecraft:melon_slice"},{Slot:13b,id:"minecraft:gold_nugget"},{Slot:20b,id:"minecraft:gold_nugget"},{Slot:21b,id:"minecraft:gold_nugget"},{Slot:22b,id:"minecraft:gold_nugget"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.glistering_melon_slice vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.glistering_melon_slice vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:glistering_melon_slice",Count:1b}