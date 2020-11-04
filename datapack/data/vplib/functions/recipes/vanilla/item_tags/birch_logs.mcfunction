#> vplib:recipes/vanilla/item_tags/birch_logs

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:birch_log"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:birch_wood"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:stripped_birch_log"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:stripped_birch_wood"} run scoreboard players set #matched vplib.temp 1 