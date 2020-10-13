#> thewii:vp_library/custom_crafting/block/gui/result_holder
#tellraw @a "Replacing result holder"

# Kill and clear slot holder item
kill @e[type=item,nbt={Item:{tag:{vplib:{slot_holder:1b,type:2b}}}}]
clear @a[distance=..8] minecraft:gray_stained_glass_pane{vplib:{slot_holder:1b,type:2b}}

# Get result
data remove storage thewii:vp_library/temp array
execute unless score @s twvp.recipe matches 1.. run data modify storage thewii:vp_library/temp array append from storage thewii:vp_library/temp containerResult

# Summon dropped items at nearest player
execute if data storage thewii:vp_library/temp array[0] at @p run function thewii:vp_library/custom_crafting/block/gui/drop_loop

# Set slot holder
replaceitem block ~ ~ ~ container.16 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:2b},display:{Name:'{"text":""}'}}