#> vplib:recipes/vanilla/item_tags/crimson_logs

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:crimson_log"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:crimson_wood"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:stripped_crimson_log"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:stripped_crimson_wood"} run scoreboard players set #matched vplib.temp 1 