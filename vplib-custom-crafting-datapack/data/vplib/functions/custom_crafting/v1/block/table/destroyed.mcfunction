#> vplib:custom_crafting/v1/block/table/destroyed

# Kill slot holders
clear @a[distance=..8] minecraft:gray_stained_glass_pane{vplib:{slot_holder:1b}}
kill @e[type=minecraft:item,nbt={Item:{tag:{vplib:{slot_holder:1b}}}}]

# Kill result slot
data modify storage vplib:temp item set from entity @s ArmorItems[3].tag.vplib.recipeOutput
execute as @e[type=minecraft:item,distance=..1,nbt={Age:0s}] run function vplib:custom_crafting/v1/block/table/general/kill_matching_item

# Kill self
kill @s