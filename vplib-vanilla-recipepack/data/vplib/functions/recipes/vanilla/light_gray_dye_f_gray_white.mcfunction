# SHAPELESS (2 slots)

# Register
execute unless score #vanilla.light_gray_dye_f_gray_white vplib.recipe matches 1.. store result score #vanilla.light_gray_dye_f_gray_white vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:gray_dye"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:white_dye"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.light_gray_dye_f_gray_white vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.light_gray_dye_f_gray_white vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:light_gray_dye",Count:2b}