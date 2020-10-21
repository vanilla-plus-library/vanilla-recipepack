#> vplib:custom_crafting/v1/block/table/place

# Summon armor stand
execute align xyz run summon minecraft:armor_stand ~0.5 ~0.5 ~0.5 {NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.crafting"],ArmorItems:[{},{},{},{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{CustomModelData:430000}}]}

# Set barrel
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"space.-8"},{"text":"\\ue000","font":"vplib:custom_crafting/v1/gui","color":"white"},{"translate":"space.-164"},{"text":"Universal Crafting Table"}]'}