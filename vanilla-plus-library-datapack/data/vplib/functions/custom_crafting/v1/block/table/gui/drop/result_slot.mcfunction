#> vplib:custom_crafting/v1/block/table/gui/drop/result_slot
#tellraw @a "Replacing result holder"

# Get result
data remove storage vplib:temp array
execute unless score @s vpcc.lastRecipe matches 1.. run data modify storage vplib:temp array append from storage vplib:temp containerResult

# Summon inserted item at nearest player
execute if data storage vplib:temp array[0] at @p run function vplib:custom_crafting/v1/block/table/gui/drop/summon_loop

# Kill and clear slot holder items
kill @e[type=item,nbt={Item:{tag:{vplib:{slot_holder:1b,type:2b}}}}]
clear @a[distance=..8] minecraft:gray_stained_glass_pane{vplib:{slot_holder:1b,type:2b}}


# Set result slot holder
replaceitem block ~ ~ ~ container.16 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:2b},display:{Name:'{"text":""}'}}