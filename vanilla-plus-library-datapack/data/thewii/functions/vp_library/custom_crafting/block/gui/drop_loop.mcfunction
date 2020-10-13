#> thewii:vp_library/custom_crafting/block/gui/drop_loop

# Summon
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["twvp.dropped"]}

# Store item
data modify entity @e[type=item,tag=twvp.dropped,limit=1] Item set from storage thewii:vp_library/temp array[0]
tag @e[type=item,tag=twvp.dropped,limit=1] remove twta.dropped

# Loop
data remove storage thewii:vp_library/temp array[0]
execute if data storage thewii:vp_library/temp array[0] run function thewii:vp_library/custom_crafting/block/gui/drop_loop