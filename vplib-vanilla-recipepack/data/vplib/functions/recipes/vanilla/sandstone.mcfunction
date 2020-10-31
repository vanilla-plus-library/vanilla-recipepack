# SHAPED (4 slots)

# Register
execute unless score #vanilla.sandstone vplib.recipe matches 1.. store result score #vanilla.sandstone vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:sand"},{Slot:3b,id:"minecraft:sand"},{Slot:11b,id:"minecraft:sand"},{Slot:12b,id:"minecraft:sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:sand"},{Slot:4b,id:"minecraft:sand"},{Slot:12b,id:"minecraft:sand"},{Slot:13b,id:"minecraft:sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:sand"},{Slot:12b,id:"minecraft:sand"},{Slot:20b,id:"minecraft:sand"},{Slot:21b,id:"minecraft:sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sandstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:sand"},{Slot:13b,id:"minecraft:sand"},{Slot:21b,id:"minecraft:sand"},{Slot:22b,id:"minecraft:sand"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sandstone vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.sandstone vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:sandstone",Count:1b}