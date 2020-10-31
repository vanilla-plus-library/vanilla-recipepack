#> vplib:recipes/vanilla/item_tags/purpur_blocks

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:purpur_block"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:purpur_pillar"} run scoreboard players set #matched vplib.temp 1 