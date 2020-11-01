# SHAPELESS WITH ITEM TAGS(1 slots)
# This type of recipe is intensive, avoid having too many recipes with 
# item tags, less than 20 in the same function tag(1-9 slots) is reasonable.

# Register
execute unless score #vanilla.jungle_planks vplib.recipe matches 1.. store result score #vanilla.jungle_planks vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 run data remove storage vplib:temp item

execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[0]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/jungle_logs

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.jungle_planks vplib.recipe


# Output
execute if score #recipe vplib.temp = #vanilla.jungle_planks vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:jungle_planks",Count:4b}