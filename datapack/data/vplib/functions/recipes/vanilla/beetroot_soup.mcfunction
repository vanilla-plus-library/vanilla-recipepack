# SHAPELESS (7 slots)

# Register
execute unless score #vanilla.beetroot_soup vplib.recipe matches 1.. store result score #vanilla.beetroot_soup vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:bowl"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:beetroot"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 6 run scoreboard players operation #recipe vplib.temp = #vanilla.beetroot_soup vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.beetroot_soup vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:beetroot_soup",Count:1b}