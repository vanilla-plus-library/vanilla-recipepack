# SHAPED (2 slots)

# Register
execute unless score #vanilla.sticky_piston vplib.recipe matches 1.. store result score #vanilla.sticky_piston vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:slime_ball"},{Slot:11b,id:"minecraft:piston"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sticky_piston vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:slime_ball"},{Slot:12b,id:"minecraft:piston"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sticky_piston vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:slime_ball"},{Slot:13b,id:"minecraft:piston"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sticky_piston vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:slime_ball"},{Slot:20b,id:"minecraft:piston"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sticky_piston vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:slime_ball"},{Slot:21b,id:"minecraft:piston"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sticky_piston vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:slime_ball"},{Slot:22b,id:"minecraft:piston"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.sticky_piston vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.sticky_piston vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:sticky_piston",Count:1b}