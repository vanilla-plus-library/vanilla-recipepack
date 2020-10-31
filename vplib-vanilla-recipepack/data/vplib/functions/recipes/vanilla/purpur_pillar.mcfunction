# SHAPED (2 slots)

# Register
execute unless score #vanilla.purpur_pillar vplib.recipe matches 1.. store result score #vanilla.purpur_pillar vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:purpur_slab"},{Slot:11b,id:"minecraft:purpur_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_pillar vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:purpur_slab"},{Slot:12b,id:"minecraft:purpur_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_pillar vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:purpur_slab"},{Slot:13b,id:"minecraft:purpur_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_pillar vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:purpur_slab"},{Slot:20b,id:"minecraft:purpur_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_pillar vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:purpur_slab"},{Slot:21b,id:"minecraft:purpur_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_pillar vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:purpur_slab"},{Slot:22b,id:"minecraft:purpur_slab"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.purpur_pillar vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.purpur_pillar vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:purpur_pillar",Count:1b}