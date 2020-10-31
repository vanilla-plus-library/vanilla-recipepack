# SHAPELESS (2 slots)

# Register
execute unless score #vanilla.gray_bed_from_white_bed vplib.recipe matches 1.. store result score #vanilla.gray_bed_from_white_bed vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:white_bed"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:gray_dye"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.gray_bed_from_white_bed vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.gray_bed_from_white_bed vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:gray_bed",Count:1b}