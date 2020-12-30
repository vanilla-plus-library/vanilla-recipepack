#> vplib:recipes/crafted/cake

# Ignore slots
data modify storage vplib:temp ignoredSlots set value [2b,3b,4b]

# Set items in the grid(It's a shaped recipe, so the buckets will always be in the same slot)
item block ~ ~ ~ container.2 replace minecraft:bucket
item block ~ ~ ~ container.3 replace minecraft:bucket
item block ~ ~ ~ container.4 replace minecraft:bucket