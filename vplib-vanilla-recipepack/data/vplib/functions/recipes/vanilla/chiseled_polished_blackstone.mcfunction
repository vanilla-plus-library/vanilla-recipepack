# SHAPED (2 slots)

# Register
execute unless score #vanilla.chiseled_polished_blackstone vplib.recipe matches 1.. store result score #vanilla.chiseled_polished_blackstone vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:polished_blackstone_slab"},{Slot:11b,id:"minecraft:polished_blackstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_polished_blackstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:polished_blackstone_slab"},{Slot:12b,id:"minecraft:polished_blackstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_polished_blackstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:polished_blackstone_slab"},{Slot:13b,id:"minecraft:polished_blackstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_polished_blackstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:polished_blackstone_slab"},{Slot:20b,id:"minecraft:polished_blackstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_polished_blackstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:polished_blackstone_slab"},{Slot:21b,id:"minecraft:polished_blackstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_polished_blackstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:polished_blackstone_slab"},{Slot:22b,id:"minecraft:polished_blackstone_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.chiseled_polished_blackstone vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.chiseled_polished_blackstone vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:chiseled_polished_blackstone",Count:1b}