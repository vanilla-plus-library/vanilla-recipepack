#> vplib:recipes/vanilla/item_tags/logs

scoreboard players set #matched vplib.temp 0
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/oak_logs
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/spruce_logs
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/birch_logs
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/jungle_logs
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/acacia_logs
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/dark_oak_logs
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/crimson_logs
execute if score #matched vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/warped_logs