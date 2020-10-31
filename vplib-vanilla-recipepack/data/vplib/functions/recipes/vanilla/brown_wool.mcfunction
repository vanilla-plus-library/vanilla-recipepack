# SHAPELESS (2 slots)

# Register
execute unless score #vanilla.brown_wool vplib.recipe matches 1.. store result score #vanilla.brown_wool vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:brown_dye"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:white_wool"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.brown_wool vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.brown_wool vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:brown_wool",Count:1b}