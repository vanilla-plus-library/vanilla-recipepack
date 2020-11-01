# SHAPED WITH ITEM TAGS(8 slots)
# This type of recipe is intensive, avoid having too many recipes with 
# item tags, less than 20 in the same function tag(1-9 slots) is reasonable.

# Register
execute unless score #vanilla.white_bed vplib.recipe matches 1.. store result score #vanilla.white_bed vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 run data remove storage vplib:temp item

execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:11b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/planks

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:12b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/planks

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:13b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/planks

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:white_wool"},{Slot:3b,id:"minecraft:white_wool"},{Slot:4b,id:"minecraft:white_wool"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.white_bed vplib.recipe


execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:20b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/planks

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:21b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/planks

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:22b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/planks

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:white_wool"},{Slot:12b,id:"minecraft:white_wool"},{Slot:13b,id:"minecraft:white_wool"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.white_bed vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.white_bed vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:white_bed",Count:1b}