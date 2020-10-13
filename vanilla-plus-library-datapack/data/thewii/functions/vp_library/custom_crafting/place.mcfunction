#> thewii:vp_library/custom_crafting/place

execute align xyz run summon minecraft:armor_stand ~0.5 ~0.5 ~0.5 {NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,Tags:["twvp.custom_crafting"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"space.-8"},{"text":"\\ue000","font":"thewii:vp_library/custom_crafting/gui","color":"white"},{"translate":"space.-164"},{"text":"Crafting Table"}]'}