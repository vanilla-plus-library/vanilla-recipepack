#> vplib:recipes/crafted/cake

# Ignore slots
data modify storage vplib:temp ignoredSlots set value [2b,3b,4b]

# Set items in the grid(It's a shaped recipe, so the buckets will always be in the same slot)
item replace block ~ ~ ~ container.2 with minecraft:bucket
item replace block ~ ~ ~ container.3 with minecraft:bucket
item replace block ~ ~ ~ container.4 with minecraft:bucket