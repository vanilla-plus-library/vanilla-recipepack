#> vplib:custom_crafting/v1/block/table/gui/drop/summon_loop

# Summon
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["vplib.dropped"]}

# Store item
data modify entity @e[type=item,tag=vplib.dropped,limit=1] Item set from storage vplib:temp array[0]
tag @e[type=item,tag=vplib.dropped,limit=1] remove vplib.dropped

# Loop
data remove storage vplib:temp array[0]
execute if data storage vplib:temp array[0] run function vplib:custom_crafting/v1/block/table/gui/drop/summon_loop