#> vplib:recipes/vanilla/item_tags/quartz_blocks

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:quartz_block"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:quartz_pillar"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:chiseld_quartz_block"} run scoreboard players set #matched vplib.temp 1 