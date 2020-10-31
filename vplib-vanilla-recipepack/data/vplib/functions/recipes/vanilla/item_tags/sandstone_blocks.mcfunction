#> vplib:recipes/vanilla/item_tags/sandstone_blocks

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:sandstone_block"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:chiseled_sandstone"} run scoreboard players set #matched vplib.temp 1 