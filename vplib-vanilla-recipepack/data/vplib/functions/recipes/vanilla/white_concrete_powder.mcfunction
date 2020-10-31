# SHAPELESS (9 slots)

# Register
execute unless score #vanilla.white_concrete_powder vplib.recipe matches 1.. store result score #vanilla.white_concrete_powder vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:white_dye"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:sand"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_1 vplib.temp matches 1.. store result score #ingredient_2 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:gravel"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 4 if score #ingredient_2 vplib.temp matches 4 run scoreboard players operation #recipe vplib.temp = #vanilla.white_concrete_powder vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.white_concrete_powder vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:white_concrete_powder",Count:8b}