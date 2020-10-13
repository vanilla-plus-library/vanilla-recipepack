#> thewii:vp_library/custom_crafting/internal/load

# Lantern Load
scoreboard players set $vplib.custom_crafting thewii.load 010000

# Add to count
scoreboard players add #modules_loaded twvp.data 1

# Update recipe registry
scoreboard players reset * twvp.recipe
scoreboard players set $register twvp.recipe 0

function #thewii:vp_library/custom_crafting/recipes/all