# SHAPELESS (9 slots)

# Register
execute unless score #vanilla.dried_kelp_block vplib.recipe matches 1.. store result score #vanilla.dried_kelp_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:dried_kelp"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 9 run scoreboard players operation #recipe vplib.temp = #vanilla.dried_kelp_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.dried_kelp_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:dried_kelp_block",Count:1b}