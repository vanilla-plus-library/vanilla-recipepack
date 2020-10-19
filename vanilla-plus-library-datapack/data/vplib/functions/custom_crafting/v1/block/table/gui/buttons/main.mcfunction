#> vplib:custom_crafting/v1/block/table/gui/buttons/main

# Craft all
execute if score @s vpcc.saved matches 1.. unless data storage vplib:temp {container:[{Slot:17b,tag:{vplib:{clickEvent:"craft_all"}}}]} run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/main