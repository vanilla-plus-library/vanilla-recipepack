#> thewii:vp_library/custom_crafting/internal/load

# Lantern Load
scoreboard players set $vplib.custom_crafting thewii.load 010000

# Add to count
scoreboard players add #modules_loaded twvp.data 1

# Update recipe registry
scoreboard players reset * twvp.recipe
scoreboard players set $register twvp.recipe 0

function #thewii:vp_library/custom_crafting/recipes/all

tellraw @a[tag=vplib.debug] [{"text":"[Debug] ","color":"yellow","bold":true},{"score":{"name":"$register","objective": "twvp.recipe"},"color":"white","bold":false},{"text":" recipes loaded.","color":"white","bold":false}]