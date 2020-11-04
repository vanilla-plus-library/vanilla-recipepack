#> vplib:recipes/vanilla/item_tags/stone_crafting_materials

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:cobblestone"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:blackstone"} run scoreboard players set #matched vplib.temp 1 