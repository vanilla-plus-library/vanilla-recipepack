# SHAPED (3 slots)

# Register
execute unless score #vanilla.cut_red_sandstone_slab vplib.recipe matches 1.. store result score #vanilla.cut_red_sandstone_slab vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:cut_red_sandstone"},{Slot:3b,id:"minecraft:cut_red_sandstone"},{Slot:4b,id:"minecraft:cut_red_sandstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cut_red_sandstone_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:cut_red_sandstone"},{Slot:12b,id:"minecraft:cut_red_sandstone"},{Slot:13b,id:"minecraft:cut_red_sandstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cut_red_sandstone_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:cut_red_sandstone"},{Slot:21b,id:"minecraft:cut_red_sandstone"},{Slot:22b,id:"minecraft:cut_red_sandstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cut_red_sandstone_slab vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.cut_red_sandstone_slab vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:cut_red_sandstone_slab",Count:6b}