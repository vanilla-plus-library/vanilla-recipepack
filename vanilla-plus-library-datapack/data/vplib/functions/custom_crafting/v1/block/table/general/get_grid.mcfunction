#> vplib:custom_crafting/v1/block/table/general/get_grid
# Description: Get grid from container.
# Input:  'vplib:temp container'
# Output: 'vplib:temp recipeInput'

# Get grid slots.
data modify storage vplib:temp recipeInput set from storage vplib:temp container
data remove storage vplib:temp recipeInput[{Slot:16b}]
data remove storage vplib:temp recipeInput[{tag:{vplib:{slot_holder:1b}}}]