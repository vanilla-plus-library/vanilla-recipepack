# SHAPED (6 slots)

# Register
execute unless score #vanilla.sandstone_wall vplib.recipe matches 1.. store result score #vanilla.sandstone_wall vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:sandstone"},{Slot:3b,id:"minecraft:sandstone"},{Slot:4b,id:"minecraft:sandstone"},{Slot:11b,id:"minecraft:sandstone"},{Slot:12b,id:"minecraft:sandstone"},{Slot:13b,id:"minecraft:sandstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sandstone_wall vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:sandstone"},{Slot:12b,id:"minecraft:sandstone"},{Slot:13b,id:"minecraft:sandstone"},{Slot:20b,id:"minecraft:sandstone"},{Slot:21b,id:"minecraft:sandstone"},{Slot:22b,id:"minecraft:sandstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sandstone_wall vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.sandstone_wall vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:sandstone_wall",Count:6b}