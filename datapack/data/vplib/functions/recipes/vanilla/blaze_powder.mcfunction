# SHAPELESS (1 slots)

# Register
execute unless score #vanilla.blaze_powder vplib.recipe matches 1.. store result score #vanilla.blaze_powder vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:blaze_rod"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.blaze_powder vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.blaze_powder vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:blaze_powder",Count:2b}