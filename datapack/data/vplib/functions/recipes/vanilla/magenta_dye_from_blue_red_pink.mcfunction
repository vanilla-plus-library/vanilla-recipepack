# SHAPELESS (3 slots)

# Register
execute unless score #vanilla.magenta_dye_from_blue_red_pink vplib.recipe matches 1.. store result score #vanilla.magenta_dye_from_blue_red_pink vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:blue_dye"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:red_dye"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_1 vplib.temp matches 1.. store result score #ingredient_2 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:pink_dye"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 if score #ingredient_2 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.magenta_dye_from_blue_red_pink vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.magenta_dye_from_blue_red_pink vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:magenta_dye",Count:3b}