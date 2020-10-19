#> vplib:custom_crafting/v1/block/table/general/summon_items_2

# Set item
data modify entity @s Item set from storage vplib:temp array[-1]

# Set owner
execute if score #set_owner vpcr.temp matches 1 run data modify entity @s Owner set from storage vplib:temp uuid

# Remove tag
tag @s remove vplib.dropped
