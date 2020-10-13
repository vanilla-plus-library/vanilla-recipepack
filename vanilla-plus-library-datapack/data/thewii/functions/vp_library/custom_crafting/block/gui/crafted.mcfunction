#> thewii:vp_library/custom_crafting/block/gui/crafted
#tellraw @a "Crafted."

# Set slot holder
replaceitem block ~ ~ ~ container.16 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:2b},display:{Name:'{"text":""}'}}

# Consume grid items
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:2b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:3b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:4b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:11b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:12b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:13b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:20b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:21b}].Count 0.9999999999
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:22b}].Count 0.9999999999

# Reset recipe
scoreboard players set #recipe twvp.temp 0