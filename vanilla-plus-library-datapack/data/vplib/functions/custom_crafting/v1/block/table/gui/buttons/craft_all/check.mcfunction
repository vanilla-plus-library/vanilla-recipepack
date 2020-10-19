#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/check

# Reset score
scoreboard players set #clicked vpcr.temp 0

# Check if clicked
execute store success score #clicked vpcr.temp run clear @s minecraft:gray_stained_glass_pane{vplib:{clickEvent:"craft_all"}} 0

# Check if shift clicked
execute if score #clicked vpcr.temp matches 1 if data entity @s Inventory[{tag:{vplib:{clickEvent:"craft_all"}}}] run scoreboard players set #clicked vpcr.temp 2


# Proceed if true
execute if score #found_player vpcr.temp matches 0 if score #clicked vpcr.temp matches 1.. run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/give








