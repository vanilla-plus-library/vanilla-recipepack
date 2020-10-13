#> thewii:vp_library/custom_crafting/block/gui/main

# Move container to storage
data modify storage thewii:vp_library/temp container set from block ~ ~ ~ Items


# Check holders
execute store result score #slot_holders twvp.temp if data storage thewii:vp_library/temp container[{Count:1b,tag:{vplib:{slot_holder:1b,type:1b}}}]
execute unless score #slot_holders twvp.temp matches 17 run function thewii:vp_library/custom_crafting/block/gui/holders
#tellraw @a ["Slot holders: ",{"score":{"name":"#slot_holders","objective":"twvp.temp"}}]

# Get craft grid slots
data modify storage thewii:vp_library/temp recipeInput set from storage thewii:vp_library/temp container
data remove storage thewii:vp_library/temp recipeInput[{Slot:16b}]
data remove storage thewii:vp_library/temp recipeInput[{tag:{vplib:{slot_holder:1b}}}]

# Get craft result slot
data remove storage thewii:vp_library/temp containerResult
data modify storage thewii:vp_library/temp containerResult set from storage thewii:vp_library/temp container[{Slot:16b}]
data remove storage thewii:vp_library/temp containerResult.Slot


# Check recipes if there is at least one item in the grid
scoreboard players set #recipe twvp.temp 0
execute if data storage thewii:vp_library/temp recipeInput[0] run function thewii:vp_library/custom_crafting/block/gui/check_recipes

# Moved result holder if there is no active recipes
execute if score #recipe twvp.temp matches 0 unless data storage thewii:vp_library/temp containerResult{Count:1b,tag:{vplib:{slot_holder:1b,type:2b}}} run function thewii:vp_library/custom_crafting/block/gui/result_holder

# Save recipe
execute unless score @s twvp.recipe = #recipe twvp.temp run function thewii:vp_library/custom_crafting/block/gui/result_store