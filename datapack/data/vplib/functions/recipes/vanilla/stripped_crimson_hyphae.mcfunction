# SHAPED (4 slots)

# Register
execute unless score #vanilla.stripped_crimson_hyphae vplib.recipe matches 1.. store result score #vanilla.stripped_crimson_hyphae vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stripped_crimson_stem"},{Slot:3b,id:"minecraft:stripped_crimson_stem"},{Slot:11b,id:"minecraft:stripped_crimson_stem"},{Slot:12b,id:"minecraft:stripped_crimson_stem"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_crimson_hyphae vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:stripped_crimson_stem"},{Slot:4b,id:"minecraft:stripped_crimson_stem"},{Slot:12b,id:"minecraft:stripped_crimson_stem"},{Slot:13b,id:"minecraft:stripped_crimson_stem"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_crimson_hyphae vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:stripped_crimson_stem"},{Slot:12b,id:"minecraft:stripped_crimson_stem"},{Slot:20b,id:"minecraft:stripped_crimson_stem"},{Slot:21b,id:"minecraft:stripped_crimson_stem"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_crimson_hyphae vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:stripped_crimson_stem"},{Slot:13b,id:"minecraft:stripped_crimson_stem"},{Slot:21b,id:"minecraft:stripped_crimson_stem"},{Slot:22b,id:"minecraft:stripped_crimson_stem"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.stripped_crimson_hyphae vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.stripped_crimson_hyphae vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:stripped_crimson_hyphae",Count:3b}