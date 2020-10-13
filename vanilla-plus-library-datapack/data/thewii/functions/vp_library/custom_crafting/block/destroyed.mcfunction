#> thewii:vp_library/custom_crafting/block/destroyed

# Kill slot holders
clear @a[distance=..8] minecraft:gray_stained_glass_pane{vplib:{slot_holder:1b}}
kill @e[type=minecraft:item,nbt={Item:{tag:{vplib:{slot_holder:1b}}}}]

# Kill result slot
data modify storage thewii:vp_library/temp item set from entity @s ArmorItems[3].tag.vplib.recipeOutput
execute as @e[type=minecraft:item,distance=..1,nbt={Age:0s}] run function thewii:vp_library/custom_crafting/block/kill_result

# Kill self
kill @s