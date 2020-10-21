#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/check_container

# Button clicked
scoreboard players set #button_clicked vpcr.temp 1

# Get grid
function vplib:custom_crafting/v1/block/table/general/get_grid

# Get result
function vplib:custom_crafting/v1/block/table/general/get_result


# Check if grid changed
data modify storage vplib:temp compare set from storage vplib:temp recipeInput
data remove storage vplib:temp compare[].Count
execute store result score #grid_changed vpcr.temp run data modify storage vplib:temp compare set from storage vplib:temp savedData.recipeInput

# Check if grid changed
data modify storage vplib:temp compare set from storage vplib:temp containerResult
execute store result score #result_changed vpcr.temp run data modify storage vplib:temp compare set from storage vplib:temp savedData.recipeOutput


# Proceed
execute if score #grid_changed vpcr.temp matches 0 if score #result_changed vpcr.temp matches 0 run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/main