# SHAPED (9 slots)

# Register
execute unless score #vanilla.soul_lantern vplib.recipe matches 1.. store result score #vanilla.soul_lantern vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:iron_nugget"},{Slot:3b,id:"minecraft:iron_nugget"},{Slot:4b,id:"minecraft:iron_nugget"},{Slot:11b,id:"minecraft:iron_nugget"},{Slot:12b,id:"minecraft:soul_torch"},{Slot:13b,id:"minecraft:iron_nugget"},{Slot:20b,id:"minecraft:iron_nugget"},{Slot:21b,id:"minecraft:iron_nugget"},{Slot:22b,id:"minecraft:iron_nugget"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.soul_lantern vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.soul_lantern vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:soul_lantern",Count:1b}