# SHAPED (6 slots)

# Register
execute unless score #vanilla.smooth_quartz_stairs vplib.recipe matches 1.. store result score #vanilla.smooth_quartz_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:smooth_quartz"},{Slot:11b,id:"minecraft:smooth_quartz"},{Slot:12b,id:"minecraft:smooth_quartz"},{Slot:20b,id:"minecraft:smooth_quartz"},{Slot:21b,id:"minecraft:smooth_quartz"},{Slot:22b,id:"minecraft:smooth_quartz"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.smooth_quartz_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.smooth_quartz_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:smooth_quartz_stairs",Count:4b}