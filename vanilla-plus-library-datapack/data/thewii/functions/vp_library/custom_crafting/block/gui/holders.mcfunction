#> thewii:vp_library/custom_crafting/block/gui/holders

# Kill and clear slot holder item
kill @e[type=item,nbt={Item:{tag:{vplib:{slot_holder:1b}}}}]
clear @a[distance=..8] minecraft:gray_stained_glass_pane{vplib:{slot_holder:1b}}


# Drop inserted item

## Get container
data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/temp container

## Remove items(slot holders and crafting grid and result
data remove storage thewii:vp_library/temp array[{tag:{vplib:{slot_holder:1b}}}]

data remove storage thewii:vp_library/temp array[{Slot:2b}]
data remove storage thewii:vp_library/temp array[{Slot:3b}]
data remove storage thewii:vp_library/temp array[{Slot:4b}]
data remove storage thewii:vp_library/temp array[{Slot:11b}]
data remove storage thewii:vp_library/temp array[{Slot:12b}]
data remove storage thewii:vp_library/temp array[{Slot:13b}]
data remove storage thewii:vp_library/temp array[{Slot:20b}]
data remove storage thewii:vp_library/temp array[{Slot:21b}]
data remove storage thewii:vp_library/temp array[{Slot:22b}]

data remove storage thewii:vp_library/temp array[{Slot:16b}]

## Summon dropped items at nearest player
#tellraw @a ["Dropping: ",{"nbt":"array","storage":"thewii:vp_library/temp"}]
execute if data storage thewii:vp_library/temp array[0] at @p run function thewii:vp_library/custom_crafting/block/gui/drop_loop


# Set slot holders
replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.1 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.6 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.7 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.9 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.10 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.14 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.15 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.17 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.19 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.24 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.25 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}

# Update container
data modify storage thewii:vp_library/temp container set from block ~ ~ ~ Items