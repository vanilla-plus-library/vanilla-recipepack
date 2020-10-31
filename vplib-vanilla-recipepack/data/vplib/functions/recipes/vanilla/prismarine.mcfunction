# SHAPED (4 slots)

# Register
execute unless score #vanilla.prismarine vplib.recipe matches 1.. store result score #vanilla.prismarine vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:prismarine_shard"},{Slot:3b,id:"minecraft:prismarine_shard"},{Slot:11b,id:"minecraft:prismarine_shard"},{Slot:12b,id:"minecraft:prismarine_shard"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.prismarine vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:prismarine_shard"},{Slot:4b,id:"minecraft:prismarine_shard"},{Slot:12b,id:"minecraft:prismarine_shard"},{Slot:13b,id:"minecraft:prismarine_shard"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.prismarine vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:prismarine_shard"},{Slot:12b,id:"minecraft:prismarine_shard"},{Slot:20b,id:"minecraft:prismarine_shard"},{Slot:21b,id:"minecraft:prismarine_shard"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.prismarine vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:prismarine_shard"},{Slot:13b,id:"minecraft:prismarine_shard"},{Slot:21b,id:"minecraft:prismarine_shard"},{Slot:22b,id:"minecraft:prismarine_shard"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.prismarine vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.prismarine vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:prismarine",Count:1b}