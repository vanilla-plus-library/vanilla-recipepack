# SHAPED WITH ITEM TAGS(2 slots)
# This type of recipe is intensive, avoid having too many recipes with 
# item tags, less than 20 in the same function tag(1-9 slots) is reasonable.

# Register
execute unless score #vanilla.torch vplib.recipe matches 1.. store result score #vanilla.torch vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 run data remove storage vplib:temp item

execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:2b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/coals

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.torch vplib.recipe


execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:3b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/coals

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.torch vplib.recipe


execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:4b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/coals

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.torch vplib.recipe


execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:11b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/coals

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.torch vplib.recipe


execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:12b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/coals

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.torch vplib.recipe


execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:13b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/coals

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.torch vplib.recipe


# Output
execute if score #recipe vplib.temp = #vanilla.torch vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:torch",Count:4b}