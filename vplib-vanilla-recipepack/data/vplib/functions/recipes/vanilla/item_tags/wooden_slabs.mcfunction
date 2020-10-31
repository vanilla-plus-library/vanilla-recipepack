#> vplib:recipes/vanilla/item_tags/wooden_slabs

scoreboard players set #matched vplib.temp 0
execute if data storage vplib:temp item{id:"minecraft:oak_slab"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:spruce_slab"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:birch_slab"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:jungle_slab"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:acacia_slab"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:dark_oak_slab"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:crimson_slab"} run scoreboard players set #matched vplib.temp 1 
execute if score #matched vplib.temp matches 0 if data storage vplib:temp item{id:"minecraft:warped_slab"} run scoreboard players set #matched vplib.temp 1 