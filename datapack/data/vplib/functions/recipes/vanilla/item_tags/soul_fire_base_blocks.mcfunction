#> vplib:recipes/vanilla/item_tags/soul_fire_base_blocks

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:soul_sand"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:soul_soil"} run scoreboard players set #matched vplib.temp 1 