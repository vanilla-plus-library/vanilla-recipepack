#> vplib:custom_crafting/v1/block/table/gui/update_data
#tellraw @a ["[",{"score":{"name":"#gametime","objective":"vpcr.data"}},"] ",{"text":"Updated stored data.","color":"yellow"}]

# Update stored data
data modify entity @s ArmorItems[3].tag.vplib set from storage vplib:temp storedData

# Update last recipe score
scoreboard players operation @s vpcc.lastRecipe = @s vpcc.recipe
