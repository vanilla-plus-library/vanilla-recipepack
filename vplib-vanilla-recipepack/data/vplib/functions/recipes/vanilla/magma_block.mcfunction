# SHAPED (4 slots)

# Register
execute unless score #vanilla.magma_block vplib.recipe matches 1.. store result score #vanilla.magma_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:magma_cream"},{Slot:3b,id:"minecraft:magma_cream"},{Slot:11b,id:"minecraft:magma_cream"},{Slot:12b,id:"minecraft:magma_cream"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.magma_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:magma_cream"},{Slot:4b,id:"minecraft:magma_cream"},{Slot:12b,id:"minecraft:magma_cream"},{Slot:13b,id:"minecraft:magma_cream"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.magma_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:magma_cream"},{Slot:12b,id:"minecraft:magma_cream"},{Slot:20b,id:"minecraft:magma_cream"},{Slot:21b,id:"minecraft:magma_cream"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.magma_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:magma_cream"},{Slot:13b,id:"minecraft:magma_cream"},{Slot:21b,id:"minecraft:magma_cream"},{Slot:22b,id:"minecraft:magma_cream"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.magma_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.magma_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:magma_block",Count:1b}