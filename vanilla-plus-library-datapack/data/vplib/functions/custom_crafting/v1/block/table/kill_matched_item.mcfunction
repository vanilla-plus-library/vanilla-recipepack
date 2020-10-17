#> vplib:custom_crafting/v1/block/table/kill_matched_item

# Get item data
data modify storage vplib:temp compare set from entity @s Item

# Compare
execute store success score #success vpcr.temp run data modify storage vplib:temp compare set from storage vplib:temp item

# Kill if matches
execute if score #success vpcr.temp matches 0 run kill @s
