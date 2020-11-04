# SHAPED (2 slots)

# Register
execute unless score #vanilla.chiseled_sandstone vplib.recipe matches 1.. store result score #vanilla.chiseled_sandstone vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:sandstone_slab"},{Slot:11b,id:"minecraft:sandstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:sandstone_slab"},{Slot:12b,id:"minecraft:sandstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:sandstone_slab"},{Slot:13b,id:"minecraft:sandstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:sandstone_slab"},{Slot:20b,id:"minecraft:sandstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:sandstone_slab"},{Slot:21b,id:"minecraft:sandstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:sandstone_slab"},{Slot:22b,id:"minecraft:sandstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_sandstone vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.chiseled_sandstone vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:chiseled_sandstone",Count:1b}