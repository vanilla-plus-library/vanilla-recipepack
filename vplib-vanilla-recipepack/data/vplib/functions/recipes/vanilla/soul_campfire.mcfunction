# SHAPED WITH ITEM TAGS(6 slots)
# This type of recipe is intensive, avoid having too many recipes with 
# item tags, less than 20 in the same function tag(1-9 slots) is reasonable.

# Register
execute unless score #vanilla.soul_campfire vplib.recipe matches 1.. store result score #vanilla.soul_campfire vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 run data remove storage vplib:temp item

execute if score #recipe vplib.temp matches 0 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:12b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/soul_fire_base_blocks

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:20b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/logs

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:21b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/logs

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 store success score #matched vplib.temp run data modify storage vplib:temp item set from storage vplib:temp recipeInput[{Slot:22b}]
execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 run function vplib:recipes/vanilla/item_tags/logs

execute if score #recipe vplib.temp matches 0 if score #matched vplib.temp matches 1 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:stick"},{Slot:11b,id:"minecraft:stick"},{Slot:13b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.soul_campfire vplib.recipe


# Output
execute if score #recipe vplib.temp = #vanilla.soul_campfire vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:soul_campfire",Count:1b}