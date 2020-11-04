#> vplib:recipes/vanilla/item_tags/coals

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:coal"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:charcoal"} run scoreboard players set #matched vplib.temp 1 