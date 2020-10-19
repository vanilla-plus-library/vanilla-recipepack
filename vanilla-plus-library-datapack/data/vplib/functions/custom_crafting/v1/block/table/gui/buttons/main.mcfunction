#> vplib:custom_crafting/v1/block/table/gui/buttons/main

# Limit number of buttons clicked
scoreboard players set #button_clicked vpcr.temp 0

# Craft all
execute if score @s vpcc.saved matches 1.. unless data storage vplib:temp {container:[{Slot:17b,tag:{vplib:{clickEvent:"craft_all"}}}]} run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/check_container