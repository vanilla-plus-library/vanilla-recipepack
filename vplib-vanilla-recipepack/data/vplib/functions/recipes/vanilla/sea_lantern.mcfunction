# SHAPED (9 slots)

# Register
execute unless score #vanilla.sea_lantern vplib.recipe matches 1.. store result score #vanilla.sea_lantern vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:prismarine_shard"},{Slot:3b,id:"minecraft:prismarine_crystals"},{Slot:4b,id:"minecraft:prismarine_shard"},{Slot:11b,id:"minecraft:prismarine_crystals"},{Slot:12b,id:"minecraft:prismarine_crystals"},{Slot:13b,id:"minecraft:prismarine_crystals"},{Slot:20b,id:"minecraft:prismarine_shard"},{Slot:21b,id:"minecraft:prismarine_crystals"},{Slot:22b,id:"minecraft:prismarine_shard"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sea_lantern vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.sea_lantern vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:sea_lantern",Count:1b}